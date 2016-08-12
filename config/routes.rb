Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"


  resources :cocktaills, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  root to: 'cocktaills#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
