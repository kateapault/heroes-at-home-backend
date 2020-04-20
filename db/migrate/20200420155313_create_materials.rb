class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :specs
      t.float :width
      t.float :height
      t.float :thickness
      t.text :notes

      t.timestamps
    end
  end
end
