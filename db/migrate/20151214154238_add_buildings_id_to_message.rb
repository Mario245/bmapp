class AddBuildingsIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :buildings_id, :string
    add_index :messages, :buildings_id
  end
end
