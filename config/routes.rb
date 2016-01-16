Rails.application.routes.draw do
  devise_for :users

  root to: 'dashboards#show'
  resource :dashboard, only: :show

  namespace :admin do
    resource :dashboard, only: :show
  end
end
