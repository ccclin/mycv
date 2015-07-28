Rails.application.routes.draw do
  root 'myself#index'
  devise_for :users
  resources :myself

  namespace :admin do
    resource :cvs
    namespace :cvs do
      resource :info
      resource :myself
      resources :edubg
      resources :jobbg
      resources :skill
      resources :colle
    end
  end
end
