class ParticipantsController < ApplicationController
  def new
  	@participant = Participant.new
  end

  def show
  	@participant = Participant.find(params[:id])
  end

  def create
  	@participant = Participant.new(participant_params)

  	if @participant.save
  		flash[:success] = "Participant created"
  		redirect_to @participant
  	else
  		render 'new'
  	end

  end

  def edit
  	@participant = Participant.find(params[:id])
  end

  def update
  	@participant = Participant.find(params[:id])
  	if @participant.update_attributes(participant_params)
  		flash[:success] = "Participant Updated"
  		redirect_to @participant
  	else
  		render 'edit'
  	end
  end

  private

  	def participant_params
  		params.require(:participant).permit(:name, :gender, :dob)
  	end
end
