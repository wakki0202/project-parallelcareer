Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        invitations: 'users/invitations'
      }
    
  root "tops#index"
  get "tops/index",to:"tops#index"


  resources :providers do
    resources :introductions, only: :create
  end



  get "posts/index",to:"posts#index"
  get "posts/:id",to:"posts#show"
  get "providers/:id/introductions", to:"introductions#new"
  get "introductions/complete", to:"introductions#complete"

  get "introductions/index", to:"introductions#index"
  get "introductions/:id", to:"introductions#show"

  get "users/index",to:"users#index"
  get "progresses/index",to:"progresses#index"
  get "progresses/:id",to:"progresses#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
