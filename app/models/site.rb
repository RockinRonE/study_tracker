class Site < ActiveRecord::Base
	validates :name, :location, presence: true 

	has_many :participating_sites
	has_many :studies, through: :participating_sites
end
