class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.text :body
      t.string :category

      t.timestamps null: false
    end
  end
end
