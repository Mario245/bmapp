class AddCompanyIdToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :company_id, :string
    add_index :buildings, :company_id
    add_column :buildings, :apartment_id, :string
    add_index :buildings, :apartment_id
  end
end
