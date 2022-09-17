class Equipment < ApplicationRecord
  belongs_to :waterpoint
  has_many :tasks

  validates :name, presence: true
  validates :date_of_installation, presence: true
  validates :date_of_expiration, presence: true
  validates :manufacturer, presence: true
  validates :warranty, presence: true
  validates :efficiency, presence: true
  validates :equipment_type, presence: true
  validates :design_period, presence: true

  paginates_per 12
  include PgSearch::Model
  pg_search_scope :search_by_fields,
                  against: [:name, :manufacturer, :equipment_type],
                  using: {
                    tsearch: { prefix: true }
                  }

  def next_maintenance
    "#{tasks.first.service.name.upcase} - #{(Date.today + tasks.first.service.frequency.months).strftime('%d/%m/%Y').upcase}"
  end
end
