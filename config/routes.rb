Rails.application.routes.draw do

  resources :addresses
  resources :categories
  resources :equipments
  resources :materials
  resources :orders
  resources :parts

  post 'orders/:id/change-status', to: 'orders#change_status'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end