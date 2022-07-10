Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'movie/:title', to: 'movies#show_by_title', as: :show_by_title, defaults: { format: :json }
      resources :movies, only: [:index] do
        collection do
          get ':genre', to: 'movies#genre', as: :genre, defaults: { format: :json }
          get ':genre/:year', to: 'movies#year', as: :year, defaults: { format: :json }
          get ':genre/:year/:country', to: 'movies#country', as: :country, defaults: { format: :json }
          # get ':published_at', to: 'movies#published_at', as: :published_at, defaults: { format: :json }
          # get ':description', to: 'movies#description', as: :description, defaults: { format: :json }
        end
      end
    end
  end
end
