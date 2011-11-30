class Film < ActiveRecord::Base
  has_many :products, :as => :details
  belongs_to :director, :class_name => "Director", :foreign_key => "director_id"
  belongs_to :producer, :class_name => "Producer", :foreign_key => "producer_id" 
end
