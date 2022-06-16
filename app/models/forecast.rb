class Forecast < ApplicationRecord
  validates :postcode, presence: true, message: "Postcode can't be blank"
end
