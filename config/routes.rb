Rails.application.routes.draw do

  resources :torta
  resources :inventarios
  resources :pruebas

  resources :helados
  root 'users#index'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
