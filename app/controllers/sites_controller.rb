class SitesController < ApplicationController
  def new
  	@site = Site.new
  end

  def index
  	@sites = Sites.all
  end

  def show
  	@site = Site.find(params[:id])
  end

  def create 
  	@site = Site.new(site_params)

  	if @site.save
  		flash[:success] = "Your site has been created!"
  		redirect_to @site
  	else
  		render 'new'
  	end
  end

  def edit
  	@site = Site.find(params[:id])
  end

  def update
  	@site = Site.find(params[:id])
  	if @site.update_attributes(site_params)
  		flash[:success] = "Site Updated"
  		redirect_to @site
  	else
  		render 'edit'
  	end
  end




  private

  	def site_params
  		params.require(:site).permit(:name, :location)
  	end
end
