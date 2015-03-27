class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(item_params)
    @item.save ? flash[:notice] = "Item saved." : flash[:alert] = "Item could not be saved."

    redirect_to current_user

  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end