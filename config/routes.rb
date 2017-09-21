Rails.application.routes.draw do
  resources :applications
  resources :publications

  devise_for :companies, path: 'companies', controllers: {

      }
  devise_for :users, path: 'users', controllers: {

      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
