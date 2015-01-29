class ArabalariGuncelle < ActiveRecord::Migration
  def change
  	change_table :cars do |t|
  		t.string :color
  		t.decimal :price, precision:10, scale:2
  		remove_column :cars, :license, :string
  		rename_column :cars, :price, :kira_bedeli
  	end
  end
end
