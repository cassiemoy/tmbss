Rails.application.routes.draw do
  
  resources :articles
  resources :movies

  root to: 'articles#index'
  
end
