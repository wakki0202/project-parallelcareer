Rails.application.routes.draw do

  
  

  resources :questions

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  
  devise_for :providers, controllers: {
    sessions: 'providers/sessions',
    passwords: 'providers/passwords',
    registrations: 'providers/registrations'
  }
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        invitations: 'users/invitations'
      }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
    
  root "tops#index"
  get "tops/index",to:"tops#index"


  resources :works do
    resources :introductions, only: [:create, :edit, :update]
    resources :details, only: [:create]
  end

  resources :news
  resources :questions
  

  get "posts/index",to:"posts#index"
  get "posts/:id",to:"posts#show"
  get "works/:id/introductions/new", to:"introductions#new"
  get "works/:id/introductions/edit", to:"introductions#edit"
  get "introductions/complete", to:"introductions#complete"

  get "works/:id/details/new", to:"details#new"

  resources :details

  get "works/:id/introductions", to:"introductions#index"
  get "works/:id/introductions/:id", to:"introductions#show"




  get "introductions/index", to:"introductions#index"
  get "introductions/:id", to:"introductions#show"
  get "introductions/:id/edit", to:"introductions#edit"

  

 resources :introductions do
    resources :progresses, only: [:create, :edit, :update, :show]
  end
  get "introductions/:id/progresses",to:"progresses#new"
  get "progresses/index",to:"progresses#index"
  get "progresses/:id",to:"progresses#show"
  get "progresses/news",to:"progresses#news"

  get "users/index",to:"users#index"
  get "users/confirm",to:"users#confirm"
  get "users/basicedit",to:"users#basicedit"
  get "users/bankedit",to:"users#bankedit"
  post "users/bankedit",to:"users#update"
  post "users/basicedit",to:"users#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
