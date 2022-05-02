class Photo < ApplicationRecord
  belongs_to :category

  # def all
  #   Photo.all.sort(:desc)
  # end

  def self.all_images
    images = all.sort {|photo| photo.created_at}
    images.map {|photo| photo.image}
  end

end
