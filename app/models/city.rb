class City < ApplicationRecord
  belongs_to :region
  has_many :users, dependent: :destroy
  has_many :companies, dependent: :destroy
end
