class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :support_id
      t.integer :genre_id
      t.integer :rating
      t.integer :detail_id
      t.string :detail_type

      t.timestamps
    end
  end
end
