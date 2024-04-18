class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @profile = @user.profile
    @occupation = @user.occupation
    @position = @user.position
    @prototypes = @user.prototypes
  end
end
