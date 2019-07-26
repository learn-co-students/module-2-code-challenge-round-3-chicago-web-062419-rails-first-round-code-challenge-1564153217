class SweetsController < ApplicationController

  before_action :find_sweet, only: [:show]
  def index
    @sweets = Sweet.all
  end
  
  def show
    @vendors = @sweet.vendors
    
  end

  private

  def find_sweet
    @sweet = Sweet.find_by(id: params[:id])
  end

end
