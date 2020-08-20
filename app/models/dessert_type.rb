class DessertType < ApplicationRecord
  belongs_to :ice_cream_order
  belongs_to :user
end
