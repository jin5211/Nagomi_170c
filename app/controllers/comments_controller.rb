class CommentsController < ApplicationController
  def create
    return unless create(comment_params)

    redirect_to prototype_path(prototype_id)
  end

  private

  def prototype_id
    params[:prototype_id]
  end

  def comment_params
    params.require(:comment).permit(:content).merge(prototype_id:)
  end
end