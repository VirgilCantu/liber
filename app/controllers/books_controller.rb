class BooksController < ApplicationController
    
    get "/new" do
        erb :"/books/new"
    end

    post "/new" do
    
    end
end