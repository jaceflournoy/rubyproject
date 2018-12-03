class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :car
  belongs_to :loan

  def helper
    wholesale = wholesaleprice
  end

  def sold_to_string
    sold ? 'Sold' : 'Not Sold'
  end

  def self.calc_final_price(car_id, loan_id)
    car = Car.find(car_id)
    loan = Loan.find(loan_id)

    principle = car.wholesaleprice
    rate = loan.interestrate
    years = loan.year

    r = rate / 4;
    n = years * 4;

    markupPrice = principle * 1.082
    taxPrice = markupPrice * 1.043

    total_price = taxPrice*((1+r)**n)

    return total_price
  end

  def sum
    inject(0) { |sum, x| sum + x }
  end
end
