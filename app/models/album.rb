class Album < ActiveRecord::Base
  has_attached_file :image, :styles => {small: "400x400#"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
