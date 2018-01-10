class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :body
      t.string :subtitle
      t.integer :beacon_id
    end
  end
end
