Chainub::Engine.routes.draw do
  devise_for :users, class_name: "Chainub::User", module: :devise
  resources :trigger_channels
  resources :action_channels
  namespace :api do
    namespace :v1 do
      match "/chainub_trigger" => "api#chainub_trigger", :as => :chainub_trigger, :via => :post
    end
  end
end
