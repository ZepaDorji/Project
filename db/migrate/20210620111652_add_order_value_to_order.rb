class AddOrderValueToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :order_value, :float
  end
end
