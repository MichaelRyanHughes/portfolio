class Album < ActiveRecord::Base
  has_attached_file :photo, :styles => {small: "150x150>"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
