class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def edit
    @albums = Album.all
  end 
end
