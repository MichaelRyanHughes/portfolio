class ProductionController < ApplicationController 
  
  def index
    @albums = Album.all
  end

  def create
    Album.create params [:album].permit[:title, :description, :artwork]
  end
end