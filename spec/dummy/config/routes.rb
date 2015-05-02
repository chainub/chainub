Rails.application.routes.draw do

  get 'home/index'

  get 'home/show'

  devise_for :users
  root to: "home#index"
  mount Chainub::Engine => "/chainub"
end
