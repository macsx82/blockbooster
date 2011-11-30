class CreateAudioFiles < ActiveRecord::Migration
  def change
    create_table :audio_files do |t|
      t.string :title
      t.integer :author_id
      t.integer :album_id
      t.integer :track_number

      t.timestamps
    end
  end
end
