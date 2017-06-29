TestedBlog::Application.routes.draw do

  devise_for :users
  get "posts/index"
  root :to => "posts#index"

  get "/pages/:page" => "pages#show"

  resources :posts

end
