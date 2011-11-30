class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.integer :director_id
      t.text :storyline
      t.string :language
      t.integer :producer_id
      t.string :year

      t.timestamps
    end
  end
end
