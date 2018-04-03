Rails.application.routes.draw do
  resources :fields

  resources :parameter_groups

  root 'parameter_groups#index'
end
