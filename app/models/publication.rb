class Publication < ApplicationRecord
  belongs_to :company
  belongs_to :area
  belongs_to :type
end
