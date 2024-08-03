class CategoriesController < ApplicationController
  def new
    @category = Category.new
    @maincategories = Category.all.order("id ASC").limit(13)
  end
end
