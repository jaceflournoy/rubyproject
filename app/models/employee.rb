class Employee < ApplicationRecord
  belongs_to :role

  # ROLES = %i[admin sales_person sales_manager finance_manager inventory_manager dealership_owner]
end
