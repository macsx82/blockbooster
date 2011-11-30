class Support < ActiveRecord::Base
  has_many :products, :class_name => "Product", :foreign_key => "support_id"
end
