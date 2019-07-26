class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find_by(id: params[:id])
  end
  
end
