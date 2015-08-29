Rails.application.routes.draw do

	root 'home#index'

	get "/teaser", to: "home#teaser"
  
end
