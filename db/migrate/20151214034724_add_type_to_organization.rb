class AddTypeToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :type, :string
  end
end
