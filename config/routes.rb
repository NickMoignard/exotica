Rails.application.routes.draw do
  resources :set_times
  resources :stages
  resources :dancers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      resources :set_times
      resources :stages
      resources :dancers
    end
  end
end
