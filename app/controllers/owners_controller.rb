class OwnersController < ApplicationController
    
    get "/new" do
        erb :"owners/signup"
    end

    post "/new" do
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

    get "/owners" do
        @owners = Owner.all
        erb :'/owners/index'
    end
end