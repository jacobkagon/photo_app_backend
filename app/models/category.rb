class Category < ApplicationRecord
    has_many :photos

    def sort_photos
      self.photos.all.sort { |photo| photo.created_at }
    end
end
