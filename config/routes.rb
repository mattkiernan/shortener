Rails.application.routes.draw do
  resources :urls, only: [:index]

  root "urls#index"

end
