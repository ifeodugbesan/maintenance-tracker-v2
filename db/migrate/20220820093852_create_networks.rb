class CreateNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :networks do |t|
      t.string :name
      t.string :address
      t.integer :number_of_households
      t.integer :max_households

      t.timestamps
    end
  end
end
