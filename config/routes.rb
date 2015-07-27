Rails.application.routes.draw do
  root 'myself#index'
  devise_for :users
  resources 'myself'
end
