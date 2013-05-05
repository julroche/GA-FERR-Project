CalTest2::Application.routes.draw do

  get "users/new"

  get "users/create"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "options" => "welcome#options", :as => "options"



  resources :events
  resources :users
  resources :sessions


  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  # root :to => "users#new"
  root :to => 'welcome#index'

end
