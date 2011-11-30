class Software < ActiveRecord::Base
  has_many :products, :as => :details
  belongs_to :operating_system, :class_name => "OperatingSystem", :foreign_key => "operating_system_id"
  belongs_to :manufactorer, :class_name => "Manufactorer", :foreign_key => "manufactorer_id"

end
