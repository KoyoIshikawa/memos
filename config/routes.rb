Rails.application.routes.draw do
  get 'sessions/new'

  root to:"memos#index"

  get '/new', to: "memos#new"

  post '/create', to: "memos#create"

  delete "/memos/:id", to:"memos#destroy"
  
  get "/memos/:id/edit",to:"memos#edit"
  
  patch "/memos/:id", to:"memos#update"
  
  get "/categories/:id",to:"categories#show"
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end