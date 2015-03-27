class ItemsController < ApplicationController

  def index
    @items = current_user.items
    @item = Item.new
  end

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)
    @item.save ? flash[:notice] = 'Item saved' : flash[:alert] = 'Item not saved'
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end