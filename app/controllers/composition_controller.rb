class CompositionController < ApplicationController
  
  def index
    @compositions = Composition.all
  end
end