class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :car
  belongs_to :loan

  def sold_to_string
    sold ? 'Sold' : 'Not Sold'
  end


#   TODO add math for price, constant multiplier and wholesale price
  def self.calc_final_price(car_id, loan_id)
    car = Car.find(car_id)
    loan = Loan.find(loan_id)

    principle = car.wholesaleprice
    rate = loan.interestrate
    years = loan.year

    markupPrice = principle + (principle * 0.082)
    taxPrice = markupPrice + (markupPrice * 0.043)
    interest = taxPrice * rate * years

    total_price = interest + taxPrice

    return total_price
  end
end
