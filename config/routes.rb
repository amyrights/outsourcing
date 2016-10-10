Rails.application.routes.draw do
  resources :websites
  resources :contacts
  resources :industry_lists
  resources :keywords
  resources :company_industries
  resources :company_profiles
  resources :industry_assigments
  devise_for :users
  get 'home/index'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
