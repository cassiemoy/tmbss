Rails.application.routes.draw do
  
  resources :articles do
    resources :comments

    collection do
      get 'index2'
    end
  end
  
  resources :movies
  resources :tags

  root to: 'welcome#index'
  
end
