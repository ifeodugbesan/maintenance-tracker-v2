class AddCompletionDateToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :completion_date, :date
  end
end
