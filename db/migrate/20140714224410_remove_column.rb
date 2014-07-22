class RemoveColumn < ActiveRecord::Migration
  def change
    remove_attachment :compositions, :image
  end
end
