class PostsController < ApplicationController
	before_filter :authorise
	def create
     @car = Car.find params[:car_id]
     @post = @car.posts.create params[:post]
     @post.user_id = @current_user.id		#sets the user_id FK
     @post.save					#saves the @post 					#object to the posts table
			respond_to do |format|
				format.html { redirect_to @car }
			end
    end

end
