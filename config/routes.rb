Rails.application.routes.draw do

  root 'static_pages#index'
  resources :requests
  resources :events
  resources :recrutements
  resources :clubs do
  	resources :pictures
  end
  resources :quarters
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
