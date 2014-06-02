class AboutController < ApplicationController

  def index
    url = "https://api.instagram.com/v1/users/234675123/media/recent/?client_id=64cabc37213b4eb6bc6853af9816d4e2"
    uri = URI.parse(url)
    json_response = Net::HTTP.get_response(uri)
    hash = JSON.parse json_response.body
    @image_urls = hash["data"].map{|id| id["images"]["standard_resolution"]["url"]}
  end
end
