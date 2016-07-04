Rails.application.routes.draw do
  devise_for :users

  resources :registered_applications

  get 'welcome', to: 'welcome#index'
  root 'welcome#index'
end
