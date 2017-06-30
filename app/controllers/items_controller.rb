class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    # @item.groupings.build
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to @item
    else
      flash.now[:alert] = "Error creating item. Please try again."
      render :new
    end
  end

  # private

  # def item_params
  #   params.require(:item).permit(:name, groupings_attributes: [:description_id])
  # end
end
