class AddUserIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :user_id, :string
    add_index :messages, :user_id
    add_column :messages, :apartment_id, :string
    add_index :messages, :apartment_id
  end
end
