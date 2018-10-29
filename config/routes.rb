Rails.application.routes.draw do
  devise_for :users
  root to: 'ideas#index'

  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"

  resources :ideas

  resources :upvotes, only: [ :create, :destroy ]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
