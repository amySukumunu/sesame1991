class UsersController < ApplicationController
		
	def new
  		@title = "Sign Up"
  		@user= User.new
  		
  	end
  	
  	def create 
  		@user = User.new(params[:user])
  		
  		if @user.save 
  			flash[:success] = "Welcome to the Sample App!"
  			
  			redirect_to @user
  		else
  			@user.password = nil 
			@user.password_confirmation = nil 
			@title ="Sign Up"
			render 'new'
  		end
  	end
  	
  	def show
		@user = User.find(params[:id])
		@title = @user.name

	end
	

	
end
