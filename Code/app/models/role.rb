class Role < ActiveRecord::Base
	validates_uniqueness_of :role
	validates_presence_of :role
end
