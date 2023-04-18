Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'sign_up' => "home#sign_up"
  devise_scope :user do
    root to: "home#index"
    get "professionals" => "home#professionals"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:edit, :update] do
    get :send_signup_code
  end 


  ############################################################
  #                    Nurse                                 #
  ############################################################
  namespace :nurse do
    resources :dashboard, only: :index
    resources :experiences, only: :index
    resources :details, only: :index
    
  end

end
