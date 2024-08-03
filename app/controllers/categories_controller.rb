class CategoriesController < ApplicationController
  def new
    @category = Category.new
    @maincategories = Category.all.order("id ASC").limit(13)
  end

  def search
    item = Category.find(params[:id])
    children_item = item.children
    render json:{ item: children_item }
  end

end
