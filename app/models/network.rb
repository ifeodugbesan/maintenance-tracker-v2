class Network < ApplicationRecord
  has_many :waterpoints, dependent: :destroy
  has_many :tasks
  has_many :services, through: :tasks
  paginates_per 20
  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }
                  }

  def completed_percentage
      result = (tasks.where(completed: true).count.to_f / tasks.count) * 100
      "#{result.round}%"
  end
end
