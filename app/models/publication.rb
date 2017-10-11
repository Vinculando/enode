class Publication < ApplicationRecord
  belongs_to :company
  belongs_to :area
  belongs_to :type

  has_many :interest_publications, dependent: :destroy
  has_many :interests, through: :interest_publications

  has_many :postulations, dependent: :destroy
end
