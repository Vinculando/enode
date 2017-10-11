class Publication < ApplicationRecord
  belongs_to :company
  belongs_to :area
  belongs_to :type

  has_many :interest_publications
  has_many :interests, through: :interest_publications

  has_many :postulations

  validates_presence_of :titulo, :problema, :description, :premios, message: 'no puede estar en blanco'
  
  # validate :validates_fecha
  #
  # def validates_fecha
  #   if limite.to_datetime < Date.current.to_s
  #     errors.add(:message, "la fecha #{limite} no puede ser menor a la fecha actual")
  #   end
  # end

end
