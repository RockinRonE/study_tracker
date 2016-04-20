class Study < ActiveRecord::Base
	validates :title, :principal_investigator, presence: true

	validates :title, uniqueness: { scope: :principal_investigator,
		message: "Should only be one investigator per study"}

	has_many :participants

	has_many :participating_sites
	has_many :sites, through: :participating_sites 
end
