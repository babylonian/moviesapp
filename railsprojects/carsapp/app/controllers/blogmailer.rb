def register(user) 
	if user
   	   @user = user 
           mail(:to => user.email, :subject => "Welcome Wheels site")
    end 
 end
