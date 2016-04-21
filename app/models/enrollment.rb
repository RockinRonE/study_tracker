class Enrollment < ActiveRecord::Base
	validates :site, :study, :participant, presence: true

	validates :participant, uniqueness: { scope: [:site, :study],
		message: "Can only have one participant per study and site" }

  belongs_to :participating_site
  belongs_to :study
  belongs_to :participant


end





