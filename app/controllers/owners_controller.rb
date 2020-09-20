class OwnersController < ApplicationController
    
    get "/signup" do
        erb :"owners/signup"
    end

end