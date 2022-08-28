class Equipment < ApplicationRecord
  belongs_to :waterpoint
  has_many :tasks
  paginates_per 12
  include PgSearch::Model
  pg_search_scope :search_by_fields,
                  against: [:name, :manufacturer, :equipment_type],
                  using: {
                    tsearch: { prefix: true }
                  }
end
