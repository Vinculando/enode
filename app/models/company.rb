class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :region_id
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :publications
belongs_to :city

validates_presence_of :email, :rut, :razon, :direccion, :rubro, :telefono, message: 'no puede estar en blanco'
validates_uniqueness_of :email, :rut, message: "esta en uso"
validates_format_of :rut,
                    :with => /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i,
                    :message => "no válido."
validates_email_format_of :email, :message => 'no tiene formato de email'

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
