Rails.application.routes.draw do
  devise_for :users
  root "posts#index" , as: "home"
  namespace :admin do 
    get '/', to: 'posts#index'
    resources :posts
  end 
end
