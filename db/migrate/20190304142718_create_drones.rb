class CreateDrones < ActiveRecord::Migration[5.2]
  def change
    create_table :drones do |t|
      t.string :title
      t.text :description
      t.string :brand
      t.string :model
      t.string :size
      t.string :weight
      t.string :endurance
      t.text :address
      t.string :city
      t.string :country
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
