Rails.application.routes.draw do


  resources :cocktaills, only: [:index, :show, :new, :create]

  root to: 'cocktaills#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
