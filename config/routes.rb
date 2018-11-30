Rails.application.routes.draw do
  resources :limits
  resources :financial_institutions
  resources :insurance_ranges
  resources :calculation_types
  resources :field_types
  resources :insurance_programs
  resources :us_states
  get 'admin_dashboard/index'
  get 'pages/index'

  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
