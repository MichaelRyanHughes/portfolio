class AddImageToComposition < ActiveRecord::Migration
  def change
    add_attachment :compositions, :image
  end
end
