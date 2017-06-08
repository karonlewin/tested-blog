TestedBlog::Application.routes.draw do

  get "posts/index"
  root :to => "posts#index"

  resources :posts

end
