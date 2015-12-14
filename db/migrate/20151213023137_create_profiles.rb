class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :user_id
      t.string :phone_no

      t.timestamps null: false
    end
    add_index :profiles, :user_id
  end
end
