class Car < ActiveRecord::Base
	has_one :ad
	validate :reg, presence: true
	validates_uniqueness_of :reg
	has_many :posts, :dependent => :destroy

end
