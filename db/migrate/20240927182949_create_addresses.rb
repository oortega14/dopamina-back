# Create Address table
class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.text :content, null: false
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
