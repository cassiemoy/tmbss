Rails.application.routes.draw do
  
  resources :articles
  resources :movies

  root to: 'welcome#index'
  
end
