class Service < ApplicationRecord
  has_many :service_equipments, dependent: :destroy
  has_many :equipments, through: :service_equipments
  validates :name, presence: :true
  validates :frequency, presence: :true
  paginates_per 12
end
