RmudWebapp::Application.routes.draw do
  devise_for :accounts
  match '/accounts/my', to: "accounts#my"


  resources :players
  resources :entries

  root to: "accounts#my"
end
