Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'complaints#index'
  get '/who/:complaint_slug/', to: "complaints#who", as: "who"
  get '/what/:complaint_slug/', to: "complaints#what", as: "what"
  get '/where/:complaint_slug/', to: "complaints#where", as: "where"
  get '/when/:complaint_slug/', to: "complaints#when", as: "when"
  get '/why/:complaint_slug/', to: "complaints#why", as: "why"

  post '/who/:complaint_slug/', to: "complaints#trans"
  post '/what/:complaint_slug/', to: "complaints#trans"
  post '/where/:complaint_slug/', to: "complaints#trans"
  post '/when/:complaint_slug/', to: "complaints#trans"
  post '/why/:complaint_slug/', to: "complaints#trans"
end
