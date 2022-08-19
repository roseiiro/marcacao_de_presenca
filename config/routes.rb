Rails.application.routes.draw do
  resources :estudantes
  resources :utilizadors
  resources :turmas
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: 'home#index'
  
  # get 'turmas', to: 'turmas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
