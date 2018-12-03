class Loan < ApplicationRecord
  validates_numericality_of :interestrate, greater_than_or_equal_to:0

  YEARS = %i[3 4 5]

  def full_name
    "#{year} years - #{interestrate * 100}%"
  end
end
