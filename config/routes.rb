Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'complaints#index'
  get '/who/:complaint_slug/', to: "complaints#who", as: "who"
  get '/what/:complaint_slug/', to: "complaints#what"
  get '/where/:complaint_slug/', to: "complaints#where"
  get '/when/:complaint_slug/', to: "complaints#when"
  get '/why/:complaint_slug/', to: "complaints#why"

  post '/who', to: "complaints#trans"
  post '/what', to: "complaints#trans"
  post '/where', to: "complaints#trans"
  post '/when', to: "complaints#trans"
  post '/why', to: "complaints#trans"
end
