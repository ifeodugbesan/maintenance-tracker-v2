class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :tasks
  has_many :comments

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def initials
    "#{first_name.first}#{last_name.first}"
  end
end
