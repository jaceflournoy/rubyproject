class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  belongs_to :car
  belongs_to :loan
end
