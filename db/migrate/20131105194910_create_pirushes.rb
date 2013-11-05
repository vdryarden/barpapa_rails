class CreatePirushes < ActiveRecord::Migration
  def change
    create_table :pirushes do |t|
      t.string :title
      t.text :content, null: true
      t.integer :index
      t.integer :paragraph_id
      t.string :type

      t.timestamps
    end
    add_index :pirushes, :paragraph_id
  end
end
