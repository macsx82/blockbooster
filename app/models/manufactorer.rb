class Manufactorer < ActiveRecord::Base
  has_many :softwares, :class_name => "Software", :foreign_key => "manufactorer_id"
end
