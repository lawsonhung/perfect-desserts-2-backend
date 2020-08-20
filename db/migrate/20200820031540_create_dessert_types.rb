class CreateDessertTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :dessert_types do |t|
      t.belongs_to :user
      t.belongs_to :ice_cream_order

      t.timestamps
    end
  end
end
