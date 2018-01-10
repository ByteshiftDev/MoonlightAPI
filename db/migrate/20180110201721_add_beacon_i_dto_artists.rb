class AddBeaconIDtoArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :beacon_id, :integer
  end
end
