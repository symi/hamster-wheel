Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'complaints#index'
  get '/who', to: "complaints#who"
  get '/what', to: "complaints#what"
  get '/where', to: "complaints#where"
  get '/when', to: "complaints#when"
  get '/why', to: "complaints#why"

  post '/who', to: "complaints#trans"
  post '/what', to: "complaints#trans"
  post '/where', to: "complaints#trans"
  post '/when', to: "complaints#trans"
  post '/why', to: "complaints#trans"
end
