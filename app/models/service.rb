class Service < ApplicationRecord
  has_many :service_equipments, dependent: :destroy
  has_many :equipments, through: :service_equipments
end
