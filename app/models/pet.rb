class Pet < ActiveRecord::Base
	validates :name, presence: true,
									 uniqueness: true
	validates :color, presence: true
	validates :age, presence: true,
									numericality: true
	validates :owner, presence: true
	validates :terms, presence: true  #this work. add a commna for the next validation
	# 									acceptance: true  #this doesn't. validation can never be passed.
end
