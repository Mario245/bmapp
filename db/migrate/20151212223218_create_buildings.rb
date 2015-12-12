class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.integer :no_of_floors
      t.integer :total_apts
      t.float :long
      t.float :lat

      t.timestamps null: false
    end
  end
end
