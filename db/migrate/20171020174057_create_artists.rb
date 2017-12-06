class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.attachment :avatar
      t.string :bio
      t.boolean :featured

      t.timestamps
    end
  end
end
