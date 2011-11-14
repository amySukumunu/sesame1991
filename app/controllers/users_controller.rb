class UsersController < ApplicationController
	before_filter :correct_user, :only => [:show]
   	before_filter :authenticate, :except => [:new, :create]
   			
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
	
	private 
  		
  		def correct_user
  			@user =User.find(params[:id])
  			 unless current_user?(@user)
				flash[:error] = "Invalid user."
				redirect_to root_path
  			 
  			 end
   		end

	
end
