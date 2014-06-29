class ProductionController < ApplicationController 
  before_filter :authenticate_user!, only: [:create] 
  
  def index
    @albums = Album.all
  end

  def create
    Album.create params [:album].permit[:title, :description, :artwork]
  end

  def show
  end

end