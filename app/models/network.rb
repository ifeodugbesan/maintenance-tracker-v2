class Network < ApplicationRecord
  has_many :waterpoints, dependent: :destroy
  has_many :tasks
  has_many :services, through: :tasks
  paginates_per 12
  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
