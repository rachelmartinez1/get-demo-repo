Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about' #controller:action
  get 'contact', to:'pages#contact'
  
  

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
