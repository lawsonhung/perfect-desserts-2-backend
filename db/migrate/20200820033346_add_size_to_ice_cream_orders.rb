class AddSizeToIceCreamOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :ice_cream_orders, :size, :string
    add_column :ice_cream_orders, :m_and_ms, :boolean
    add_column :ice_cream_orders, :hot_chocolate_fudge, :boolean
    add_column :ice_cream_orders, :sprinkles, :boolean
    add_column :ice_cream_orders, :peanuts, :boolean
  end
end
