Rails.application.routes.draw do
  resources :applications
  resources :publications
  devise_for :companies
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
