class Album < ActiveRecord::Base
  has_attached_file :image, PAPERCLIP_STORAGE_OPTIONS.merge(:styles => {small: "400x400#"})
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
