class Task < ApplicationRecord
  belongs_to :equipment
  belongs_to :waterpoint
  belongs_to :network
  belongs_to :service
  has_many :comments
  has_many :users, through: :comments
  validates :start_date, presence: true
  validates :end_date, presence: true
end
