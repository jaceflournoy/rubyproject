class Employee < ApplicationRecord
  belongs_to :role

  def full_name
    "#{firstname} #{lastname}"
  end
end
