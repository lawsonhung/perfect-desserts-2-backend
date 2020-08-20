class User < ApplicationRecord
  has_secure_password
  # Users:
  # kev: buffaloboy
  has_many :dessert_types
  has_many :ice_cream_orders, through: :dessert_types
end
