class StudiesController < ApplicationController
	def index
		@studies = Study.all
	end

  def new
  	@study = Study.new
  end

  def create
  	@study = Study.new(study_params)

  	if @study.save
  		flash[:success] = "Your study has been created!"
  		redirect_to @study
  	else
  		render 'new'
  	end

  end

  private

  	def study_params
  		params.require(:study).permit(:title, :investigator)
  	end
end
