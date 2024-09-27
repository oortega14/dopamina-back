# Create Carts table
class CreateCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
