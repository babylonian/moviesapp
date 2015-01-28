class Car < ActiveRecord::Base
 belongs_to :ad
 validate :reg, presence: true
 validates_uniqueness_of :reg
end
