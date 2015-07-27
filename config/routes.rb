Rails.application.routes.draw do
  root 'myself#show'
  devise_for :users
  resources 'myself'
end
