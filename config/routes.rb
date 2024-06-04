Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resource :accounts

  get 'activity/mine'

  get 'activity/feed'

  root "activity#mine"


  get "up" => "rails/health#show", as: :rails_health_check

end
