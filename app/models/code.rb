class Code < ActiveRecord::Base
  has_attached_file :image, PAPERCLIP_STORAGE_OPTIONS.merge(:styles => {small: "640x640#"})
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # use ruby 1.9.3 hashes
  # styles: {small: '640x640#'}
end
