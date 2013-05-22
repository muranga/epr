Epr::Application.routes.draw do
  resources :proposals do
    get "index"

    get "assign"

    get "review"

    get "show"
  end

  resources :projects do
    get "add_partner" => "projects#get_add_partner"

    put "add_partner" => "projects#post_add_partner"

    get "submit_proposal" => "projects#get_submit_proposal"

    put "submit_proposal" => "projects#post_submit_proposal"

    get "review" => "projects#review"
  end



  devise_for :users
  resources :users

  get "home/index"

  root :to => "home#index"

end
