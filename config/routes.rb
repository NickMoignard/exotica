Rails.application.routes.draw do
  resources :stages
  resources :dancers
  resources :set_times
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
