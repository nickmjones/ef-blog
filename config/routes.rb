Rails.application.routes.draw do
  devise_for :authors
  root to: 'posts#index'
  resources :posts

  namespace :admin do
    resources :posts
    root to: 'posts#index'
    get '', to: 'dashboard#index', as: '/'
  end

end
