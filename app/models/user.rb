class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates_presence_of :firstname, :lastname, :email, :role


  ROLES = %i[admin dealership_owner sales_person sales_manager finance_manager inventory_manager]

  def full_name
    "#{firstname} #{lastname}"
  end


end
