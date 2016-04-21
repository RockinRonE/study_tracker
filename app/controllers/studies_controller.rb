class StudiesController < ApplicationController
	def index
		@studies = Study.all
	end

	def show 
		@study = Study.find(params[:id])
	end

  def new
    @studies = Study.all

  	@study = Study.new
  end

  def create
  	@study = Study.new(study_params)

  	if @study.save
  		flash[:success] = "Your study has been created!"
  		redirect_to root_path
  	else
  		render 'new'
  	end

  end

  def edit 
  	@study = Study.find(params[:id])
  end

  def update
  	@study = Study.find(params[:id])
  	if @study.update_attributes(study_params)
  		flash[:success] = "Study Updated"
  		redirect_to @study
  	else
  		render 'edit'
  	end
  end

  private

  	def study_params
  		params.require(:study).permit(:title, :principal_investigator)
  	end
end
