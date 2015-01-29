class AddLicenseToCars < ActiveRecord::Migration
  def change
    add_column :cars, :license, :string
  end
end
