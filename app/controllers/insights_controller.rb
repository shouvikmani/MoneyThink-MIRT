class InsightsController < ApplicationController
	def index
		@reports = Report.all
	end
end
