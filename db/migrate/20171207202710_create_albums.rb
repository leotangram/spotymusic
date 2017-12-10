class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.date :released_at
      t.integer :artist_id

      t.references :artist, index: true

      t.timestamps
    end
    add_foreign_key :albums, :artists
  end
end
