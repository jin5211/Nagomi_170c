class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
  end

  private

  def prototype_params
    params.require(:prototype).permitted(:title, :catch_copy, :concept)
  end
end
