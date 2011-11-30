class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.text :plot
      t.string :language
      t.string :isbn
      t.integer :editor_id
      t.string :year

      t.timestamps
    end
  end
end
