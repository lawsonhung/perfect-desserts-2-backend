class AddSizeToIceCreamOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :ice_cream_orders, :size, :string
  end
end
