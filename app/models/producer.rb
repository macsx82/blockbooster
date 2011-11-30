class Producer < ActiveRecord::Base
  has_many :films, :class_name => "Film", :foreign_key => "producer_id" 
end
