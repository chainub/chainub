Rails.application.routes.draw do

  root to: "home#index"
  mount Chainub::Engine => "/chainub"
end
