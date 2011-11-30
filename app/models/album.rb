class Album < ActiveRecord::Base
  belongs_to :author, :class_name => "Author", :foreign_key => "author_id"
  has_many :audio_files, :class_name => "AudioFile", :foreign_key => "album_id" 
end
