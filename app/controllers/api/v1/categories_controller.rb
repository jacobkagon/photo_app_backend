class Api::V1::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @categor
    render json: @categories
  end

  def create
      @category = Category.new(name: params[:name])
      if @category.save
        render json: @category
        puts "category saved"
        puts Category.all.count
      else 
        puts @category.errors.full_messages
      end
    end

  def photos
    category = Category.find(params[:id])
    @photos = category.sort_photos
    render json: @photos

  end
end