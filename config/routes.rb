Rails.application.routes.draw do
  devise_for :users

  get 'dashboard/overview' => 'dashboard#overview'

  resources :users

  devise_scope :user do
    root :to => "devise/sessions#new"

    get "signup", to: "devise/registrations#new"
    get "login",  to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
  end
end
