class Product < ActiveRecord::Base
  belongs_to :details, :polymorphic => true
  belongs_to :support, :class_name => "Support", :foreign_key => "support_id"
  belongs_to :genre, :class_name => "Genre", :foreign_key => "genre_id"

end
