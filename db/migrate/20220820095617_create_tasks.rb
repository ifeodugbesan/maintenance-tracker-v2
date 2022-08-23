class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :extra_info
      t.string :schedule, default: "Predicted"
      t.boolean :completed, default: false
      t.references :issuer, foreign_key: { to_table: :users }
      t.references :technician, foreign_key: { to_table: :users }
      t.references :equipment, null: false, foreign_key: true
      t.references :waterpoint, null: false, foreign_key: true
      t.references :network, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
