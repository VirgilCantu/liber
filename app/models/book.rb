class Book < ActiveRecord::Base
    belongs_to :owner
end