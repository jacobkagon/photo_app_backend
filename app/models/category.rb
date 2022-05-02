class Category < ApplicationRecord
    has_many :photos

    def sort_photos
      self.photos.all.sort()
    end

    def self.all
      # not sure what we should sort by yet. Maybe created at? Maybe alphabetical? 
      Photo.all.sort()
    end
end
