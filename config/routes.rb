Chainub::Engine.routes.draw do
  resources :channels
  namespace :api do
    namespace :v1 do
      match "/chainub_trigger" => "api#chainub_trigger", :as => :chainub_trigger, :via => :post
    end
  end
end
