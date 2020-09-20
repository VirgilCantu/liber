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
            redirect "/account"
        else
            redirect "/failure"
        end
    end

    get "/failure" do
        erb :"session/failure"
    end

    get "/taken" do
        erb :"session/taken"
    end

    helpers do
        def logged_in?
          !!session[:user_id]
        end
    
        def current_user
          Owner.find(session[:user_id])
        end
      end


end