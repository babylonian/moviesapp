class User < ActiveRecord::Base
has_many :ads
validates_uniqueness_of :email
  
end
