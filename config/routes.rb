Rails.application.routes.draw do
  resources :artists, only: %i[index show create destroy]
  resources :fav_artists, only: %i[create destroy]
  resources :setlists, only: %i[create destroy]
  resources :users, only: %i[index show create update destroy]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
