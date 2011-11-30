class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :name

      t.timestamps
    end
  end
end
