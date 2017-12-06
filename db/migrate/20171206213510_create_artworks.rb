class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.integer :artist_id
      t.attachment :photo

      t.timestamps
    end
  end
end
