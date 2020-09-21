class OwnersController < ApplicationController
    
    get "/owners/new" do
        erb :"owners/signup"
    end

    post "/owners/new" do
        if params[:username] == "" || params[:password] == "" || params[:name] == "" 
            redirect "/failure"
        elsif Owner.find_by(username: params[:username])
            redirect "/taken"
        else
            Owner.create(params)
            redirect "/login"
        end
    end

    get "/owners/account" do
        erb :"owners/account"
    end

    get "/owners" do
        @owners = Owner.all
        erb :'/owners/index'
    end

    get '/owners/:id' do
        @owner = Owner.find(params[:id])
        erb :'/owners/show'
    end

    get '/owners/:id/edit' do
        @owner = Owner.find(params[:id])
        if current_user.id == @owner.id
        erb :'/owners/edit'
        else
        redirect "/not_auth"
        end
    end 

    patch '/owners/:id' do
        @owner = Owner.find(params[:id])
        @owner.update(params[:owner])  
        @owner.save 
        redirect to "/owners/account"
      end
end