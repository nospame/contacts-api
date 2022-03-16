class AddAddressAndCoordsToContact < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :address, :string
    add_column :contacts, :latitude, :float
    add_column :contacts, :longitude, :float
  end
end
