Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # get '/messages' => 'messages#index'
    #**************
    #these two routes below seems wrong because they seems like post methods.. creating new info in the db
    get '/messages' => 'messages#create' 
    get '/messages/:text' => 'messages#create'
    #**************
    #seems like it should look more like these below but then again these don't work in chrome just in insomnia.
    #post "/messages" => "messages#create"
    #post '/messages/:text' => 'messages#create'
    post 'messages/' => 'messages#create'
  end
end
