Rails.application.routes.draw do

  root to: "artist#index"

  resources :artist

end
