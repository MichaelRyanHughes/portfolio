class AboutController < ApplicationController
  
  def index
    @image_urls = Instagram.get_image_urls
  end
end