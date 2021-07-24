Rails.application.routes.draw do
  root to: 'pages#home'
  resources :videos, only: :index
end
