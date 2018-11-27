class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :car
  belongs_to :loan

#   TODO add math for price, constant multiplier and wholesale price
  def self.calc_final_price(car_id, loan_id)
    car = Car.find(car_id)
    loan = Loan.find(loan_id)

    wholesaleprice = car.wholesaleprice
    interestrate = loan.interestrate
    years = loan.years

    total_price = wholesaleprice * interestrate

    return total_price;
  end
end
