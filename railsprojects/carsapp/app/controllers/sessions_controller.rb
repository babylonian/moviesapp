class SessionsController < ApplicationController

  def new
  end


  def create
	user = User.find_by_name(params[:name])	
   if user && user.authenticate(params[:password]) 			
	session[:user_id] = user.id	
 	redirect_to allcars_path		#displays the user/show 
   else  	 		
	flash.now[:error] = "Invalid name/password combination."      	
	render 'new'		           #shows the signin page again 
    end
  end

  def destroy
	if signed_in?
			session[:user_id]=nil
  
	else
			flash[:notice] = "You need to sign in first"
	end
	redirect_to signin_path
end end