class CreateTvSeries < ActiveRecord::Migration
  def change
    create_table :tv_series do |t|
      t.string :title
      t.integer :director_id
      t.text :storyline
      t.integer :seasons
      t.string :language
      t.integer :producer_id
      t.string :year

      t.timestamps
    end
  end
end
