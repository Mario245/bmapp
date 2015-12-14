class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :user_id
      t.string :apartment_id

      t.timestamps null: false
    end
    add_index :leases, :user_id
    add_index :leases, :apartment_id
  end
end
