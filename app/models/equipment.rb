class Equipment < ApplicationRecord
  belongs_to :waterpoint
  has_many :tasks
end
