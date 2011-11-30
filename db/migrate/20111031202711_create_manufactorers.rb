class CreateManufactorers < ActiveRecord::Migration
  def change
    create_table :manufactorers do |t|
      t.string :name

      t.timestamps
    end
  end
end
