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

  validates_presence_of :email, :encrypted_password, :rut, :nombre, :paterno, :materno, :genero, message: "no puede estar en blanco"
  validates_uniqueness_of :email, :rut, message: "esta en uso"
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i,
                      :message => "no válido."
  validates_email_format_of :email, :message => 'no tiene formato de email'

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
