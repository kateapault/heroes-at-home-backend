class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :keywords
      t.integer :category_id
      t.string :file
      t.text :notes
      t.string :tutorial

      t.timestamps
    end
  end
end
