class RemoveNameFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :name, :string
    remove_column :companies, :address, :string
  end
end
