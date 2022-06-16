class Forecast < ApplicationRecord
  validates :postcode, presence: { message: "Postcode can't be blank." }

  validate :is_valid?

  def is_valid?(postcode)
    errors.add(:postcode, "isn't a valid UK postcode.") unless /[A-Z]{1,2}[0-9][0-9A-Z]?\s?[0-9][A-Z]{2}/.match?(postcode.to_s)
  end
end
