Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :employees
  resources :commodities
  resources :commodity_inventories
  resources :trading_records
  resources :wages
end
