class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_careers
  has_many :careers, through: :user_careers

  has_many :user_interests
  has_many :interests, through: :user_interests

  belongs_to :city
  has_one :disc_profile
  belongs_to :university

end
