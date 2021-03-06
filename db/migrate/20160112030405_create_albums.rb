class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.string :released_at
      t.references :artist, index: true

      t.timestamps null: false
    end
    add_foreign_key :albums, :artists
  end
end
