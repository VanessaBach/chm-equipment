class CreateSensors < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :serial_number
      t.string :brand
      t.string :model
      t.boolean :status
      t.string :comment
      t.string :image

      t.timestamps
    end
  end
end
