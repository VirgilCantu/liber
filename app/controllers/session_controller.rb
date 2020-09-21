class SessionController < ApplicationController
    
    get "/" do
        erb :"session/index"
    end

    get "/login" do
        if logged_in? 
            redirect "/owners/#{current_user.id}"
        else
            erb :"session/login"
        end
    end

    post "/login" do
        user = Owner.find_by(username: params[:username])

        if logged_in?
            redirect "/owners/#{current_user.id}"
        else
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                redirect "/owners/#{user.id}"
            else
                redirect "/failure"
            end
        end
    end

    get "/logout" do
        session.clear
        redirect "/"
    end

    get "/failure" do
        erb :"session/failure"
    end

    get "/taken" do
        erb :"session/taken"
    end

    get "/not_auth" do
        erb :"session/not_auth"
    end

    get "/required" do
        erb :"session/required"
    end
end