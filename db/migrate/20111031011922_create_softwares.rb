class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.integer :manufactorer_id
      t.integer :operating_system_id
      t.text :description
      t.string :year

      t.timestamps
    end
  end
end
