class FloorplansController < ApplicationController
	def new
		Rails.logger.info("PARAMS: #{params.inspect}")
	end

	def create
		@floorplan = Floorplan.new(floorplan_params)
		@floorplan.project_id = params[:project_id]

		Rails.logger.info("#{@floorplan.inspect}")
		if @floorplan.save
			@project = Project.find(params[:project_id])
			redirect_to @project
		else
			params.inspect
			Rails.logger.info("#{@floorplan.errors.full_messages}")
			redirect_to root_path
		end
		

	end

	def index
	end

	private
		def floorplan_params
			params.require(:floorplan).permit(:display_name,:project_id,:image)

		end
end
