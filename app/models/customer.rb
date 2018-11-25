class Customer < ApplicationRecord

  def full_name
    "#{firstname} #{lastname}"
  end
end
