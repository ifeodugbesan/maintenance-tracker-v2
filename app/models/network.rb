class Network < ApplicationRecord
  has_many :waterpoints
  has_many :tasks
  has_many :services, through: :tasks

  # def complete_tasks
  #   tasks.where(complete_task: true).count
  # end
end
