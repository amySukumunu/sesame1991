class PagesController < ApplicationController
  def home
  	@title ="Home"
  	@pagePic ="home.jpg"
  end
  
  def about
  	@title ="About"
  end
  
  def contact
  	@title = "Contact"
  end


end
