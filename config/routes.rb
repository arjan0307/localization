Localization::Application.routes.draw do
  root :to => 'payments#index'

  resources :payments
  resources :deposits, only: [:new, :create]
end
