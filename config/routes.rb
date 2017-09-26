Rails.application.routes.draw do
  get 'dashboards/student'

  get 'dashboards/company'

  resources :applications
  resources :publications

  devise_for :companies, path: 'companies', controllers: {
    registrations: 'companies/registrations'
  }
  devise_for :users, path: 'users', controllers: {
    registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'dashboards#company'
end
