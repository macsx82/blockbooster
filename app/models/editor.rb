class Editor < ActiveRecord::Base
  has_many :books, :class_name => "Book", :foreign_key => "editor_id"
end
