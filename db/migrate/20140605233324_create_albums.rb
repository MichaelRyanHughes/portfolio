class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.text :title
      t.text :description
      t.string :artwork

      t.timestamps
    end
  end
end
