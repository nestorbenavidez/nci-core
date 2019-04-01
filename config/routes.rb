Rails.application.routes.draw do
  resources :financial_institutions
  resources :names
  resources :calculation_ranges
  resources :field_classes
  resources :limits
  resources :insurance_programs
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  resources :users
  get 'dashboard/index'
  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  root :to => 'user_sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
