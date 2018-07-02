Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :articles
  # get 'welcome/home', to: 'welcome#home'
  root 'welcome#home'
  get 'about', to: 'welcome#about'
end
