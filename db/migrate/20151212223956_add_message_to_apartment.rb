class AddMessageToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :message_id, :string
    add_index :apartments, :message_id
  end
end
