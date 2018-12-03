class Car < ApplicationRecord
  has_one_attached :image
  validates_presence_of :make, :model, :color, :vin, :wholesaleprice, :image
  validates_numericality_of :wholesaleprice, greater_than_or_equal_to:0

  def full_car
    "#{vin} - #{make} #{model}"
  end

  def car_box
    "#{color} #{make} #{model}"
  end

end

