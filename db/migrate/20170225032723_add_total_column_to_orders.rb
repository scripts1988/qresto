class AddTotalColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :total, :numeric
  end
end
