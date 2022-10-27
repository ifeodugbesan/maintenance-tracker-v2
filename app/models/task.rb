class Task < ApplicationRecord
  belongs_to :issuer, class_name: "User", foreign_key: "issuer_id"
  belongs_to :technician, class_name: "User", foreign_key: "technician_id"
  belongs_to :equipment
  belongs_to :waterpoint
  belongs_to :network
  belongs_to :service
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :title, presence: true
  validates :extra_info, presence: true
  validates :technician, presence: true
  validates :service, presence: true
  validates :equipment, presence: true
  validates :waterpoint, presence: true

  paginates_per 12
  include PgSearch::Model
  pg_search_scope :search_by_fields,
                  against: [:title],
                  associated_against: {
                    technician: [:first_name, :last_name],
                    network: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
