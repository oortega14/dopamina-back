# Create Orders table
class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true
      t.integer :status, default: 0 # e.g., pending, shipped, delivered, canceled
      t.decimal :total_price, precision: 10, scale: 2, null: false
      t.integer :payment_status, default: 0 # e.g., pending, paid, refunded
      t.timestamps
    end
  end
end
