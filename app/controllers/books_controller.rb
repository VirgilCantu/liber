class BooksController < ApplicationController
    
    get '/books' do
            @books = Book.all
            erb :'/books/index'
    end
        
    get "/books/new" do
        if logged_in?
            erb :"/books/new"
        else 
            redirect "/login"
        end
    end

    post "/books" do
        if params[:title].empty? || params[:author].empty? || params[:condition].empty? || params[:book_type].empty? 
            redirect "/required"
        else
            book = Book.create(params) 
            current_user.books << book
            redirect "/owners/#{current_user.id}"
        end
    end

    get '/books/:id' do
        find_book
        erb :'/books/show'
    end
    
    get '/books/:id/edit' do
        if logged_in? && current_user.id == Book.find(params[:id]).owner.id
            find_book
            erb :'/books/edit'
        else
            redirect "/not_auth"
        end
    end 

    patch '/books/:id' do
        find_book
        @book.update(params[:book])  
        redirect "books/#{@book.id}"
      end

      delete '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        @book.delete
        redirect "/owners/#{current_user.id}"
      end 

end