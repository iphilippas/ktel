class AssignmentsController < ApplicationController
	def new
		@assignment = Assignment.new
	end

	def create
		@assignment = Assignment.new(assignment_params)

		
	end

	private
		def assignment_params
      params.require(:assignment).permit(:routre_id, :bus_id, :description, :night)
    end
end
