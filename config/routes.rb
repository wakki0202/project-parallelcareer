Rails.application.routes.draw do
  resources :providers

  get "posts/index",to:"posts#index"
  get "posts/:id",to:"posts#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
