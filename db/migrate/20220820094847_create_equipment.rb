class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.date :date_of_installation
      t.date :date_of_expiration
      t.string :manufacturer
      t.date :warranty
      t.string :efficiency
      t.string :equipment_type
      t.integer :design_period
      t.boolean :inactive, default: false
      t.references :waterpoint, null: false, foreign_key: true
      t.timestamps
    end
  end
end
