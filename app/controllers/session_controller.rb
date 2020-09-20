class SessionController < ApplicationController
    
    get "/" do
        erb :"session/index"
    end

    get "/login" do
        erb :"session/login"
    end


end