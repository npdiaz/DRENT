class AddInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :telephone, :string, null: false
    add_column :users, :birth_date, :date, null: false
    add_column :users, :about, :text
    add_column :users, :country_id, :string, null: false
  end
end
