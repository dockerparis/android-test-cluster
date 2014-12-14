class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.integer :width
      t.integer :height
      t.integer :ram
      t.boolean :gps

      t.timestamps
    end
  end
end
