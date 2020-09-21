require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "liber_secret"
  end
 
  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      Owner.find(session[:user_id])
    end

    def find_book
      @book = Book.find(params[:id])
    end

    def find_owner
      @owner = Owner.find(params[:id])
    end
  end
  
end
