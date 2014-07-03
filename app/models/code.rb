class Code < ActiveRecord::Base
  has_attached_file :image, PAPERCLIP_STORAGE_OPTIONS.merge(:styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png")
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
