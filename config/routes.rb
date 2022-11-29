Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stock, only: %i[index]
      root "welcome#index"
      get '/forcast', to: 'forcast#index'
      post 'users', to:'users#create'
      post 'sessions', to:'sessions#create'
      post 'road_trip', to:'road_trip#create'
    end
  end
end
