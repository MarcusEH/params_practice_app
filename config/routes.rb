Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/messages' => 'messages#index'
    # post "/messages" => "messages#create"
    post '/messages/:text' => 'messages#create'
  end
end
