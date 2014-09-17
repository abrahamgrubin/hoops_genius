HoopsGenius::Application.routes.draw do
 
  devise_for :users

  resources :teams do 
    resources :players
    resources :games
  end

  resources :games
  
  authenticated :user do 
    root 'teams#index', as: 'authenticated_root'
  end 

  root to: 'home#index'

end
