class Ad < ActiveRecord::Base
 belongs_to :car
 validate :reg, presence: true
end
