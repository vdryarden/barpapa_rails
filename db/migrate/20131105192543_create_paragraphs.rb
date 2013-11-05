class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.string :title, null: true
      t.text :content
      t.integer :order
      t.integer :daf_id
      
      t.timestamps
    end
    add_index :paragraphs, :daf_id
  end
end
