class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name
      t.text :url
      t.timestamp :created_at
      t.references :hardwares

      t.timestamps
    end
    add_index :project, :hardwares_id
  end
end
