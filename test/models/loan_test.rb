require 'test_helper'

class LoanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @loan = Loan.new
  end

  test 'car wholesale price must be positive' do
    @loan.interestrate = -5
    assert !@loan.valid?
  end

end
