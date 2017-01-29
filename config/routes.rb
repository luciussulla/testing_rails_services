Rails.application.routes.draw do
  resources :questions

  get '/test', to: "tests#new"
  post '/test', to: "tests#generate_action"
  
  get '/generate_action', to: "tests#generate_action"
  post '/generate_action', to: "tests#check_result"
  
  get '/check_result', to: "tests#check_result"
  
end