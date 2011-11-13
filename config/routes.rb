Sesame::Application.routes.draw do
	resources :users 
		
	root :to => 'pages#home'
  	match '/contact', 	:to => 'pages#contact'
  	match '/about',   	:to => 'pages#about'
	match '/signup',   	:to => 'users#new'
    
    
    
end
