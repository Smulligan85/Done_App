class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @items = @user.items
    @item = Item.new
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
