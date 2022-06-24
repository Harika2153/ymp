class Food < ActiveRecord::Base
    has_many :orderitems
    has_many :orders
    #belongs_to :orderitem
end