class Publication < ApplicationRecord
  belongs_to :company
  belongs_to :area
  belongs_to :type

  has_many :interest_publications
  has_many :interests, through: :interest_publications

  has_many :postulations
end
