class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    @prototype.valid?
    @prototype.save
    redirect_to '/'
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end
end
