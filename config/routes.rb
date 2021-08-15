Rails.application.routes.draw do
 
  concern :api_default do
    
    resources :book
    resources :author
 
  
  end

  # versionament of api v1
  namespace :api do
    namespace :v1 do 
      concerns :api_default 
    end
  end
  


end
