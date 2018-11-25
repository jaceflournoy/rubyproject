class Car < ApplicationRecord
  has_one_attached :image

  def full_car
    "#{vin} - #{make} #{model}"
  end

  def self.search(search)
    if search
      where(["make LIKE ?","%#{search}%"])
    else
      all
    end
  end

end

