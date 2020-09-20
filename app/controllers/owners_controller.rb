class OwnersController < ApplicationController
    
    get "/signup" do
        erb :"owners/signup"
    end

    post "/signup" do
        if params[:username] == "" || params[:password] == "" || params[:name] == ""
            redirect "/failure"
        else
            Owner.create(params)
            redirect "/login"
        end
    end
end