class UserCareer < ApplicationRecord
  belongs_to :user
  belongs_to :career
end
