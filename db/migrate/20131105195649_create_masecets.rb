class CreateMasecets < ActiveRecord::Migration
  def change
    create_table :masecets do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
