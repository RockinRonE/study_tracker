class ParticipatingSite < ActiveRecord::Base
  belongs_to :study
  belongs_to :site
end
