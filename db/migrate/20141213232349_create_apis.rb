class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.text :name
      t.integer :version

      t.timestamps
    end
  end
end
