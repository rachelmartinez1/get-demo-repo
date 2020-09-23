Rails.application.routes.draw do

  resources :portfolios, except: [:show]
  
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about' #controller:action
  get 'contact', to:'pages#contact'
  get 'tech-news', to: 'pages#tech_news'
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'
  
  root to: 'pages#home'
end
