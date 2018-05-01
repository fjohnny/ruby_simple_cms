Rails.application.routes.draw do
  
  #root route
  root 'demo#index'

  #Resourceful Routes
  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end

  #simple route 
  get 'demo/index' 
  get 'demo/hello' 
  get 'demo/other_hello'
  get 'demo/gf' 
  get 'demo/escape_output'

  #default route = may go away in future versions of the rails 
  #get ':controller(/:action(/:id))'  

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
