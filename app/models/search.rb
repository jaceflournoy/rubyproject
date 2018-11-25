class Search < ApplicationRecord

  def search_cars

    cars = Car.all

    cars = cars.where(["name LIKE ?","%#{keyword}%"]) if keyword.present?
    cars = cars.where(["make LIKE ?", make]) if make.present?
    cars = cars.where(["model LIKE ?", model]) if model.present?
    cars = cars.where(["color LIKE ?", color]) if color.present?
    cars = cars.where(["wholesaleprice >= ?", minprice]) if minprice.present?
    cars = cars.where(["wholesaleprice >= ?", maxprice]) if maxprice.present?
    cars = cars.where(["vin LIKE ?", vin]) if vin.present?

    return cars
  end

end
