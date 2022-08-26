class CreateWaterpoints < ActiveRecord::Migration[7.0]
  def change
    create_table :waterpoints do |t|
      t.string :name
      t.integer :mwater_id
      t.string :waterpoint_type
      t.float :longitude
      t.float :latitude
      t.string :address
      t.boolean :kiosk
      t.string :manufacturer
      t.string :design_period
      t.string :warranty
      t.string :efficiency
      t.references :network, null: false, foreign_key: true

      t.timestamps
    end
  end
end
