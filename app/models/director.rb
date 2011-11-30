class Director < ActiveRecord::Base
  has_many :films, :class_name => "Film", :foreign_key => "director_id" 
end
