  Rails.application.routes.draw do
    resources :ingredients
    #este resources users se puede comentar o no segun el caso de uso
    resources :sandwiches
    resources :sandwich_ingredients

    post '/sandwiches/:sandwich_id/ingredients/add/' => 'sandwiches#add_ingredient'

end
