class CreateBeacons < ActiveRecord::Migration[5.1]
  def change
    create_table :beacons do |t|
      t.string :uuid
      t.integer :major
      t.integer :minor
    end
  end
end
