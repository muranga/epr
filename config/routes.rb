Epr::Application.routes.draw do
  resources :projects
  resources :project_steps
  devise_for :users
  get "home/index"
  root :to => "home#index"

end
