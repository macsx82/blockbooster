class Book < ActiveRecord::Base
  has_many :products, :as => :details
  belongs_to :author, :class_name => "Author", :foreign_key => "author_id"
  belongs_to :editor, :class_name => "Editor", :foreign_key => "editor_id"
end
