class Type < ApplicationRecord
  has_many :publications, dependent: :destroy
end
