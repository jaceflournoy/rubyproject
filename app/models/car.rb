class Car < ApplicationRecord
  has_one_attached :image

  def full_car
    "#{vin} - #{make} #{model}"
  end
end
