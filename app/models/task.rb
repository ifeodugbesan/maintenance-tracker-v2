class Task < ApplicationRecord
  belongs_to :equipment
  belongs_to :waterpoint
  belongs_to :network
  belongs_to :service
end
