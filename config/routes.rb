Rails.application.routes.draw do

  devise_for :users, controller: {
    registrasions: 'registrasions'

  }

  root 'store#index'
    resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
