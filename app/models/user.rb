class User < ApplicationRecord
  attr_writer :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_validation :default_email
  validates :phone, presence: true, uniqueness: true
  has_one_attached :avatar
  has_many :tasks, class_name: "Task", foreign_key: "technician_id"
  has_many :comments
  paginates_per 20

  def default_email
    unless manager
      self.email = "#{first_name.downcase}#{last_name.downcase}".gsub(/\s/, "") + "@warwanda.com"
    end
  end

  def login
    @login || self.phone || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions).where(["lower(phone) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:phone].nil?
        where(conditions).first
      else
        where(phone: conditions[:phone]).first
      end
    end
  end

  def active_for_authentication?
    super && self.active
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def initials
    "#{first_name.first}#{last_name.first}"
  end
end
