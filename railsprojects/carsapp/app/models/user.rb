class User < ActiveRecord::Base
	validates_uniqueness_of :email
	has_secure_password	
	validates_confirmation_of :password
	has_many :posts, :dependent => :destroy

	
end
