class AddCustomerAddrColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :customer_addr, :string
  end
end
