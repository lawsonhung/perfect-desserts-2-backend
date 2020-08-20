class IceCreamOrder < ApplicationRecord
  has_many :dessert_types
  has_many :users, through: :dessert_types
end
