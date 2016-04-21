class PagesController < ApplicationController
  def home
  	@participants = Participant.all
  	@sites = Site.all

  	

  end
end
