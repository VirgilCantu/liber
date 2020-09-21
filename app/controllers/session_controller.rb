class SessionController < ApplicationController
    
    get "/" do
        erb :"session/index"
    end

    get "/login" do
        erb :"session/login"
    end

    post "/login" do
        user = Owner.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/owners/account"
        else
            redirect "/failure"
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
end