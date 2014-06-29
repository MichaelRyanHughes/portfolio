class CompositionController < ApplicationController
  before_filter :authenticate_user!, only: [:create]
  
  def index
    @compositions = Composition.all
  end

  def create
    Composition.create params [:composition].permit[:title, :descripiton, :vimeo_id]
  end
end