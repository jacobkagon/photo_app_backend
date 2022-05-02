Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :photos, only: [:index, :create]
      resources :categories, only: [:index, :create]

    #  get ':id/photos', to: 'categories#photos'
    end
  end
end

# send the category id back to the server

# fetch(#{category_id/photos})
