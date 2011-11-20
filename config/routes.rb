Sesame::Application.routes.draw do
	resources :users do 
		resources :microposts

	end
	resources :sessions
	resources :microposts do 
		resources :comments
	end 
		
	root :to => 'pages#home'
  	match '/contact', 	:to => 'pages#contact'
  	match '/about',   	:to => 'pages#about'
	match '/signup',   	:to => 'users#new'
    match '/signin',   	:to => 'sessions#new'
  	match '/signout',   :to => 'sessions#destroy'
    match '/blog',     	:to => 'microposts#index'
    match '/newpost',  	:to => 'microposts#new'
    match 'microposts/category_list/:id' => 'microposts#category_list'    
   
end
