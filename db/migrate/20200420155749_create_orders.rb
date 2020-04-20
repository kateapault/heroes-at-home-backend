class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :equipment_id
      t.integer :number
      t.string :address_id
      t.text :notes

      t.timestamps
    end
  end
end
