Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect("login")

  # Using Devise for authentication
  devise_for :users,
    path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'cmon_let_me_in'
  },
     controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
    },

  skip: [:registrations]

  devise_scope :user do
    get 'login', to: 'users/sessions#new'
  end


  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
