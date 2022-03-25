Rails.application.routes.draw do

  # Clowns
  get "/clowns" => "clowns#index"
  get "/clowns/:id" => "clowns#show"
  post "/clowns" => "clowns#create"
  patch "/clowns/:id" => "clowns#update"
  delete "/clowns/:id" => "clowns#destroy" #fire a clown

end
