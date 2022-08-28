class Equipment < ApplicationRecord
  belongs_to :waterpoint
  has_many :tasks
  paginates_per 12
end
