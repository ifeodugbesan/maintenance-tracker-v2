class Network < ApplicationRecord
  has_many :waterpoints, dependent: :destroy
  has_many :tasks
  has_many :services, through: :tasks
  validates :name, presence: :true
  validates :address, presence: :true
  validates :number_of_households, presence: :true
  validates :max_households, presence: :true
  paginates_per 18
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
