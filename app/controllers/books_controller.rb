class BooksController < ApplicationController
    
    get '/books' do
        @books = Book.all
        erb :'/books/index'
      end
        
    get "/books/new" do
        erb :"/books/new"
    end

    post "/books" do
        @book = Book.create(params)
        @book.owner = current_user
        redirect to "/books/#{@book.id}"
    end

    get '/books/:id' do
        @book = Book.find(params[:id])
        erb :'/books/show'
      end
    

end