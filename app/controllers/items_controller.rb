class ItemsController < ApplicationController

  def index
    @items = current_user.items
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    @item.save ? flash[:notice] = "Item saved." : flash[:alert] = "Item could not be saved."
    redirect_to authenticated_root_path

  end

def destroy
  @item = current_user.items.find(params[:id])
  @item.destroy ? flash[:notice] = "Item destroyed." :  flash[:alert] = "Item could not be destroyed."
  # redirect_to authenticated_root_path  
  # respond_to do |format|
  #   format.html
  #   format.js
  # end
end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end