class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :region_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :user_careers
  has_many :careers, through: :user_careers

  has_many :user_interests
  has_many :interests, through: :user_interests

  belongs_to :city
  has_one :disc_profile
  belongs_to :university, optional: true

  def self.recreate_avatar
    User.find_each do |m|
      begin
        m.avatar.recreate_versions! if m.avatar?
      rescue => e
        puts  "ERROR: #{m.id} -> #{e.to_s}"
      end
    end
  end

end
