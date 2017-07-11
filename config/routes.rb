Rails.application.routes.draw do
	get "/vue_test",to: "heros#index"
  root "users#index"
  resources :users, only: :index
end
