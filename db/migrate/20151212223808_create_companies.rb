class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :building_id

      t.timestamps null: false
    end
    add_index :companies, :building_id
  end
end
