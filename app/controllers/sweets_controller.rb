class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @ssweet = Sweet.find(params[:id])
  end
  
end
