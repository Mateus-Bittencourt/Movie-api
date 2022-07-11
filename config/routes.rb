Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'movies/title/:title', to: 'movies#show_by_title', as: :show_by_title, defaults: { format: :json }
      resources :movies, only: %i[index show] do
        collection do
          get 'genre/:genre', to: 'movies#list_by_genre', as: :list_by_genre, defaults: { format: :json }
          get 'genre/:genre/year/:year', to: 'movies#list_by_genre_year', as: :list_by_genre_year,
                                         defaults: { format: :json }
          get 'genre/:genre/year/:year/country/:country', to: 'movies#list_by_genre_country',
                                                          as: :list_by_genre_country, defaults: { format: :json }

          get 'year/:year', to: 'movies#list_by_year', as: :list_by_year, defaults: { format: :json }
          get 'country/:country', to: 'movies#list_by_country', as: :list_by_country, defaults: { format: :json }
        end
      end
    end
  end
end
