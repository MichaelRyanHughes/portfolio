class AddImageToCode < ActiveRecord::Migration
  def change
    add_attachment :codes, :image
  end
end
