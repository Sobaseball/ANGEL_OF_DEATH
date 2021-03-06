class Admin::ItemsController < ApplicationController
  include ApplicationHelper


  def index
    @items = Item.all
  end

  def new
    @genre = Genre.all
    @item = Item.new

  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @images = Image.all
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    redirect_to admin_item_path(@item)
  end

  def edit
    @item = Item.find(params[:id])
    @genre = Genre.all
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item)
  end



   private

  def item_params
    params.require(:item).permit(:name, :size, :introduction, :genre_id, :price, :is_active, :cover_id, images_images: [])
  end


end
