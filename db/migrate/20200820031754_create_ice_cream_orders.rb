class CreateIceCreamOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_cream_orders do |t|
      t.string :flavor

      t.timestamps
    end
  end
end
