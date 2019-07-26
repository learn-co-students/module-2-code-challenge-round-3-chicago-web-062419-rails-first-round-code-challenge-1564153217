class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.create(sweet_params)
    redirect_to @sweet
  end

  def show
    find_sweet
  end

  def edit
    find_sweet
  end

  def update
    find_sweet
    @sweet.update(sweet_params)
    redirect_to @sweet
  end

  private

  def sweet_params
    params.require(:sweet).permit(:name)
  end

  def find_sweet
    @sweet = Sweet.find(params[:id])
  end
end
