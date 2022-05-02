class Api::V1::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
      @category = Category.create(name: params[:name])
      render json: @category
    end

  def photos
    category = Category.find(params[:id])
    @photos = category.render_photos
    render json: @photos

  end
end