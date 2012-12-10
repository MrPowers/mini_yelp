MiniYelp::Application.routes.draw do
  resources :restaurants do
    resources :reviews
  end

  devise_for :users
  
  root :to => "restaurants#index"
end
