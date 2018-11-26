Rails.application.routes.draw do
  resources :inventarios
  resources :pruebas
  resources :helados
  root 'welcome#welcome'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
