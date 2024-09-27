# Create UserDetails table
class CreateUserDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :user_details do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone
      t.string :gender
      t.date :birth_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
