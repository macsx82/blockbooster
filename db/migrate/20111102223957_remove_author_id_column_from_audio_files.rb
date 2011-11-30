class RemoveAuthorIdColumnFromAudioFiles < ActiveRecord::Migration
  def up
    remove_column :audio_files, :author_id
  end

  def down
    add_column :audio_files, :author_id, :integer
  end
end
