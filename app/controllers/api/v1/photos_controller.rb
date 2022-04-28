class Api::V1::PhotosController < ApplicationController
    def index
      @photos = Photo.all_images
      render json: @photos
    end

    def create
      image = Cloudinary::Uploader.upload(params[:image])
      @photo = Photo.new(caption: params[:caption], image: image["url"], category_id: params[:category_id])
      if @photo.save
        # flash[:success] = "Saved Image"
        puts "saved"
      else
        # flash[:error] = @photo.errors.full_messages
        puts "didn't save"
        puts "phot0: #{@photo.errors.full_messages}"
      end
      render json: @photo
    end
end
