class Api::V1::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
      @category = Category.new(name: params[:name])
      if @category.save
        render json: @category
      else 
        puts @category.errors.full_messages
      end
    end

  def photos
    category = Category.find(params[:id])
    @photos = category.render_photos
    render json: @photos

  end
end