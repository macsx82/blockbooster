class Genre < ActiveRecord::Base
  has_many :products, :class_name => "Product", :foreign_key => "product_id" 
end
