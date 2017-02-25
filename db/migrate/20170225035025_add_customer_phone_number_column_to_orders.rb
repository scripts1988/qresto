class AddCustomerPhoneNumberColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :customer_phone_number, :text
  end
end
