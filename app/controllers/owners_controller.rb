class OwnersController < ApplicationController
    
    get "/signup" do
        erb :"owners/signup"
    end

    post "/signup" do
        if params[:username] == "" || params[:password] == "" || params[:name] == "" 
            redirect "/failure"
        elsif Owner.find_by(username: params[:username])
            redirect "/taken"
        else
            Owner.create(params)
            redirect "/login"
        end
    end

    get "/account" do
        erb :"owners/account"
    end
end