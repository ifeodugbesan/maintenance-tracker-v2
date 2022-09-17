class Waterpoint < ApplicationRecord
  belongs_to :network
  has_many :tasks
  has_many :waterpoint_equipments
  has_many :equipments, through: :waterpoint_equipments
  validates :name, presence: true
  validates :network, presence: true
  validates :waterpoint_type, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :address, presence: true
  validates :manufacturer, presence: true
  validates :efficiency, presence: true
  validates :design_period, presence: true
  validates :warranty, presence: true
end
