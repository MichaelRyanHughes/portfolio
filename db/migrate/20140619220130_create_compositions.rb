class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :title
      t.string :vimeo_id
      t.string :vimeo_thumbnail

      t.timestamps
    end
  end
end
