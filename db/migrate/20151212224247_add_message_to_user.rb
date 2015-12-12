class AddMessageToUser < ActiveRecord::Migration
  def change
    add_column :users, :message_id, :string
    add_index :users, :message_id
  end
end
