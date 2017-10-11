class Postulation < ApplicationRecord
  belongs_to :user
  belongs_to :publication
  has_many :messages

  validates_presence_of :contenido, message: 'no puede estar en blanco'
end
