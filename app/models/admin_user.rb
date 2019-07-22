class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :registerable, :validatable, :confirmable
  belongs_to :role
  has_many :blogs
  has_many :experiences
end
