class Participant < ActiveRecord::Base
	validates :name, :gender, :dob, presence: true


	belongs_to :study


end
