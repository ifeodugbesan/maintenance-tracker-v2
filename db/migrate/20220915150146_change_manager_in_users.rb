class ChangeManagerInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :manager, :boolean, default: false
  end
end
