class SessionController < ApplicationController
    
    get "/" do
        erb :"sessions/index"
    end

end