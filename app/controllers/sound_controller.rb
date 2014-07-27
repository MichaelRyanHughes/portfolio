class SoundController < ApplicationController

  def index
    @compositions = Composition.all
    @albums = Album.all
  end
end
