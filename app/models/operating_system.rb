class OperatingSystem < ActiveRecord::Base
  has_many :softwares, :class_name => "Software", :foreign_key => "software_id"
end
