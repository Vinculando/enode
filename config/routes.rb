Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'dashboards/student'

  get 'dashboards/company'

  get 'dashboards/academico'

  resources :publications do
    resources :postulations
  end

  devise_for :companies, path: 'companies', controllers: {
    registrations: 'companies/registrations'
  }

  devise_for :users, path: 'users', controllers: {
    registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'dashboards#company'
end
