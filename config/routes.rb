Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :docs

  authenticated :user do
    root 'docs#index', as: 'authenticated_root'
  end
end
