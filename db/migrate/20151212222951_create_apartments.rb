class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :no_of_bedrooms
      t.float :rent
      t.string :apt_no
      t.integer :no_of_floors

      t.timestamps null: false
    end
  end
end
