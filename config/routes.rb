Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stock, only: %i[index]
      resources :crypto, only: %i[index]
    end
  end
end
