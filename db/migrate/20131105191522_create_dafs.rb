class CreateDafs < ActiveRecord::Migration
  def change
    create_table :dafs do |t|

      t.integer :daf_num
      t.integer :perek
      t.integer :masecet_id
      
      t.timestamps
    end
    add_index :dafs, [:daf_num, :masecet_id], unique: true
  end
end
