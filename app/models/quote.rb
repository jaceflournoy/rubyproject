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
      #wholesale price
    loan = Loan.find(loan_id)
      #name, years, interest rate

    principle = car.wholesaleprice
    rate = loan.interestrate
    years = loan.year

    r = rate / 4;
    n = years * 4;

    markupPrice = principle * 1.082
    taxPrice = markupPrice * 1.043

    payment = taxPrice*r/(1-1/(1+r)**n)

    total_price = payment * n

    return total_price
  end

  def sum
    inject(0) { |sum, x| sum + x }
  end
end
