class Study < ActiveRecord::Base
	validates :title, :investigator, presence: true
end
