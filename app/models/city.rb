class City < ApplicationRecord
  belongs_to :region
  has_many :users
  has_many :companies
end
