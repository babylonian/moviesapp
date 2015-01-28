class User < ActiveRecord::Base
belongs_to :ad
 validates_uniqueness_of :email
end
