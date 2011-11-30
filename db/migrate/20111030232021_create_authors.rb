class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.string :country

      t.timestamps
    end
  end
end
