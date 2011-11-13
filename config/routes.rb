Sesame::Application.routes.draw do
	resources :users 
	resources :sessions
		
	root :to => 'pages#home'
  	match '/contact', 	:to => 'pages#contact'
  	match '/about',   	:to => 'pages#about'
	match '/signup',   	:to => 'users#new'
    match '/signin',   	:to => 'sessions#new'
  	match '/signout',   	:to => 'sessions#destroy'
    
    
end
