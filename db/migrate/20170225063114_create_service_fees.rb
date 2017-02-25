class CreateServiceFees < ActiveRecord::Migration[5.0]
  def change
    create_table :service_fees do |t|
      t.string :description
      t.numeric :cost

      t.timestamps
    end
  end
end
