class Study < ActiveRecord::Base
	validates :title, :investigator, presence: true

	has_many :participants

	has_many :participating_sites
	has_many :sites, through: :participating_sites 
end
