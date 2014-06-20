class Composition < ActiveRecord::Base

require 'open-uri'
  before_save :get_thumbnail

    private
    def get_thumbnail
       self.vimeo_id 
       thumbnail = open("http://vimeo.com/api/v2/video/#{self.vimeo_id}.json").read
       thumbnail = JSON(thumbnail).first
       self.vimeo_thumbnail = thumbnail["thumbnail_large"]
    end
end