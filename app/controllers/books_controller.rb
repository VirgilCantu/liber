class BooksController < ApplicationController
    
    get "/books/new" do
        erb :"/books/new"
    end

    post "/books" do
        @book = Book.create(params)

        redirect to "/books/#{@book.id}"
    end

end