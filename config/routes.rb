Rails.application.routes.draw do

  namespace :api, defaults: {format: :json } do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy]
  end

  get 'static_pages/root'
  root 'static_pages#root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
