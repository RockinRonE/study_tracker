class Participant < ActiveRecord::Base
	validates :name, :gender, :dob, presence: true
end
