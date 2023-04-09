Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
    root to: "home#index"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  ############################################################
  #                    Nurse                                 #
  ############################################################
  namespace :nurse do
    resources :dashboard, only: :index
  end

end
