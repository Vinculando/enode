class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :publications
belongs_to :city
	def self.recreate_avatar
		Company.find_each do |m|
			begin
				m.avatar.recreate_versions! if m.avatar?
			rescue => e
				puts  "ERROR: #{m.id} -> #{e.to_s}"
			end
		end
	end 




end
