class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :author_id
      t.string :year
      t.integer :tracks

      t.timestamps
    end
  end
end
