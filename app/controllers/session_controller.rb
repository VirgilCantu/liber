class SessionController < ApplicationController
    
    get "/" do
        erb :"session/index"
    end

    get "/login" do
        erb :"session/login"
    end

    get "/failure" do
        erb :"session/failure"
    end


end