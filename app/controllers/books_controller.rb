class BooksController < ApplicationController
    
    get '/books' do
        if logged_in?
            @books = Book.all
            erb :'/books/index'
        else 
            redirect "/"
        end
    end
        
    get "/books/new" do
        erb :"/books/new"
    end

    post "/books" do
        if params[:title] && params[:author && ]
        @book = Book.create(params)
        @book.owner = current_user
        @book.save
        redirect "/owners/#{current_user.id}"
    end

    get '/books/:id' do
        @book = Book.find(params[:id])
        erb :'/books/show'
    end
    
    get '/books/:id/edit' do
        @book = Book.find(params[:id])
        erb :'/books/edit'
    end 

    patch '/books/:id' do
        @book = Book.find(params[:id])
        @book.update(params[:book])  
        @book.save 
        redirect "books/#{@book.id}"
      end

      delete '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        @book.delete
        redirect "/owners/#{current_user.id}"
      end 

end