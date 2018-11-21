class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  ROLES = %i[admin sales_person sales_manager finance_manager inventory_manager dealership_owner]
end
