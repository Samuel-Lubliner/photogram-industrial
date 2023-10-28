Rails.application.routes.draw do
  root "photos#index"

  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "users#liked", as: :liked 
  get ":username/feed" => "users#feed", as: :feed
  get ":username/followers" => "users#folloers", as: :followers
  get ":username/following" => "users#folloing", as: :following
  
  get ":username" => "users#show", as: :user 

end
