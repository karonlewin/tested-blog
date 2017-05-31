TestedBlog::Application.routes.draw do

  get "posts/index"
  root :to => "home#index"

  resources :posts

end
