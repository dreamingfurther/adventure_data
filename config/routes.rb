Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboard#index'

  namespace :admin do
    root to: 'dashboard#index'
  end
end
