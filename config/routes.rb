Rails.application.routes.draw do
  get 'admin/login'
  post   'admin/login'   => 'admin#create'
  resources :books
  resources :authors
  resources :account_histories
  resources :accounts
  resources :suppliers
  resources :appointements
  resources :physicians
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
