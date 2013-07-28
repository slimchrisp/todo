Todo::Application.routes.draw do

  resources :lists

  root :to => "home#index"
end
