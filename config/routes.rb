Rails.application.routes.draw do

  resources :regions, only: :index do
    resources :holdings, only: [:new, :create, :show], shallow: true
    resources :areas, shallow: true do
      resources :companies, shallow: true
    end
  end

  devise_for :users
  ActiveAdmin.routes(self)

  root 'regions#index'

end
