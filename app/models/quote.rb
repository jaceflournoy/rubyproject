class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :car
  belongs_to :loan

#   TODO add math for price, constant multiplier and wholesale price

end
