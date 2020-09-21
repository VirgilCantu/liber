class OwnersController < ApplicationController
    
    get "/owners/new" do
        erb :"owners/new"
    end

    post "/owners/new" do
        if params[:username] == "" || params[:password] == "" || params[:name] == "" 
            redirect "/failure"
        elsif Owner.find_by(username: params[:username])
            redirect "/taken"
        else
            user = Owner.create(params)
            session[:user_id] = user.id
            redirect "/owners/#{user.id}"
        end
    end

    get "/owners" do
        @owners = Owner.all
        erb :'/owners/index'
    end

    get '/owners/:id' do
        find_owner
        erb :'/owners/show'
    end

    get '/owners/:id/edit' do
        find_owner
        if current_user.id == @owner.id
        erb :'/owners/edit'
        else
        redirect "/not_auth"
        end
    end 

    patch '/owners/:id' do
        find_owner
        @owner.update(params[:owner])  
        @owner.save 
        redirect to "/owners/#{@owner.id}"
      end
end