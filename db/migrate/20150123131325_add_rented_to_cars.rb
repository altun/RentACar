class AddRentedToCars < ActiveRecord::Migration
  def change
    add_column :cars, :rented, :boolean
  end
end
