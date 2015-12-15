class AddMessageIdToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :message_id, :string
    add_index :buildings, :message_id
  end
end
