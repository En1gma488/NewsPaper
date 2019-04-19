Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :articles
    get 'article/fatch_import', to: 'articles#fatch_import'
    get 'article/source_import', to: 'articles#source_import'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
