class CodeController < ApplicationController
  before_filter :authenticate_user!, only: [:create]
  def index 
    @codes = Code.all
  end

  def create
    Code.create params [:code].permit[:title, :url]
  end

  def show
  end
end
