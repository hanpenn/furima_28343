Rails.application.routes.draw do
  root 'homes#index'
  get 'homes/index'
  devise_for :users

  devise_scope :users do
    get '/users', to: redirect("/users/sing_up")
  end
  
end
