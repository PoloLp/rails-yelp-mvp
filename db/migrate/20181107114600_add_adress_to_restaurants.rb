class AddAdressToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :address, :text
  end
end
