class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.float :width
      t.float :height
      t.float :thickness
      t.integer :number
      t.integer :equipment_id
      t.integer :material_id
      t.text :notes

      t.timestamps
    end
  end
end
