Rails.application.routes.draw do
  resources :users
  resources :appointments
  resources :user_appointments
  resources :blogs
  resources :categories
  namespace :api do
    namespace :v1 do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'

  end
end

end
