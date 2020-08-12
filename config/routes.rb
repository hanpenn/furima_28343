Rails.application.routes.draw do
  devise_for :users

  devise_scope :users do
    get '/users', to: redirect("/users/sing_up")
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
