Rails.application.routes.draw do
  devise_for :authors, :controllers => { registrations: 'registrations' }
  root to: 'posts#index'
  resources :posts
  resources :questions, except: [:edit]
  get '/thanks', to: 'questions#thanks'
  get '/questions/ask', to: 'questions#new'
  get '/subscribe', to: 'posts#subscribe'

  namespace :admin do
    resources :posts
    root to: 'posts#index'
    get '', to: 'dashboard#index', as: '/'
  end

end
