class Site < ActiveRecord::Base
	validates :name, :location, presence: true 
end
