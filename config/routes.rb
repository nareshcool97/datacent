Rails.application.routes.draw do

  namespace :api, :defaults => { :format => 'json' } do
    namespace :v1 do
      get "datacenters", to: "servercenters#index"
      get "datacenters/:id", to: "servercenters#show"
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#welcome'

  resources :languages
  resources :servercenters
  resources :countries
end
