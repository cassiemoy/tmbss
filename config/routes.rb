Rails.application.routes.draw do
  
  resources :articles do
    resources :comments
  end
  
  resources :movies

  root to: 'welcome#index'
  
end
