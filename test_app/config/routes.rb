Rails.application.routes.draw do
  # get 'welcome/home', to: 'welcome#home'
  root 'welcome#home'
  get 'about', to: 'welcome#about'
end
