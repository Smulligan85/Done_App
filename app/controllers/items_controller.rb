class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)
  end

  def item_params
    params.require(:item).permit(:name)
  end
end