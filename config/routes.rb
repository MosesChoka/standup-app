Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, controllers: { registrations: "registrations" }
  resource :accounts

  get 'activity/mine'

  get 'activity/feed'

  root "activity#mine"

=======
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  get 'activity/mine'
  get 'activity/feed'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
>>>>>>> users

  get "up" => "rails/health#show", as: :rails_health_check

end
