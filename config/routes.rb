Rails.application.routes.draw do

  

  resources :infos
  namespace :api do
    namespace :v1 do 
      resources :venues
      resources :users
    end
  end
  
end
