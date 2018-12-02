class Loan < ApplicationRecord
  #TODO add math here for loan by inputted interest rate
  #
  YEARS = %i[3 4 5]

  def full_name
    "#{year} years - #{interestrate * 100}%"
  end
end
