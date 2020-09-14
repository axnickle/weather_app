Rails.application.routes.draw do
  devise_for :users 
  # making API requests using this route and also display response on browser on the same route
  root 'home#index'
  get '/search' => 'search#index', :as => 'search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
