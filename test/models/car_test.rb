require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @car = Car.new
  end

  test 'car wholesale price must be positive' do
      @car.wholesaleprice = -5
      assert !@car.valid?
  end
end
