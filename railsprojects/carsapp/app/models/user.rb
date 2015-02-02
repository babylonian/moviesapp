class User < ActiveRecord::Base
has_many :ads
validates_uniqueness_of :email
validates_confirmation_of :password_digest

end
