class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.text :name
      t.text :ip
      t.references :projects
      
      t.timestamps
    end
    add_index :containers, :projects_id
  end
end
