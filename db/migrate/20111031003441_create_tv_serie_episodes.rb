class CreateTvSerieEpisodes < ActiveRecord::Migration
  def change
    create_table :tv_serie_episodes do |t|
      t.string :title
      t.integer :tv_serie_id
      t.integer :number
      t.integer :season
      t.text :plot

      t.timestamps
    end
  end
end
