class ReportsController < ApplicationController

  ## GET /reports/new
  #def new
    ##@report = Report.new
  #end

  ## POST /reports
  ## POST /reports.json
  #def create
    #@report = Report.new(report_params)

    #respond_to do |format|
      #if @report.save
        #format.html { redirect_to root_path, notice: 'Report was successfully created.' }
        #format.json { render :show, status: :created, location: @report }
      #else
        #format.html { render :new }
        #format.json { render json: @report.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  private
  def report_params
    params.require(:report).permit(:player, :description, :screenshot, :screenshot_cache)
  end
end
