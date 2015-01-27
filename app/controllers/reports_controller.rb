class ReportsController < ApplicationController
	def new
	end

	def create
		@school = School.find_by_name(params[:report][:school])
		@report = @school.reports.create(report_params)

		if @report.lessonNum == 1
			redirect_to report_lesson1_path(@report)
		elsif @report.lessonNum == 2
			redirect_to report_lesson2_path(@report)
		elsif @report.lessonNum == 3
			redirect_to report_lesson3_path(@report)
		elsif @report.lessonNum == 4
			redirect_to report_lesson4_path(@report)
		elsif @report.lessonNum == 5
			redirect_to report_lesson5_path(@report)
		elsif @report.lessonNum == 6
			redirect_to report_lesson6_path(@report)
		elsif @report.lessonNum == 7
			redirect_to report_lesson7_path(@report)
		elsif @report.lessonNum == 8
			redirect_to report_lesson8_path(@report)
		elsif @report.lessonNum == 9
			redirect_to report_lesson9_path(@report)
		elsif @report.lessonNum == 10
			redirect_to report_lesson10_path(@report)
		elsif @report.lessonNum == 11
			redirect_to report_lesson11_path(@report)
		elsif @report.lessonNum == 12
			redirect_to report_lesson12_path(@report)
		end
	end

	def update
		@report = Report.find(params[:id])

		@report.update(reportUpdate_params)
		redirect_to root_path
	end


	private
		def report_params
			params.require(:report).permit(:lessonNum, :attendance)
		end

		def reportUpdate_params
			params.require(:report).permit(:pq1Score, :pq2Score, :q1Score, :q2Score, :q3Score)
		end
end
