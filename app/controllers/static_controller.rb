class StaticController < ApplicationController
  def perk_shop
    @page_title = 'Perk Shop'
  end

  def report_abuse
    @report = Report.new
    @page_title = 'Report Abuse'
  end

  def create_abuse_report
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path, notice: 'Thank you for your report.'
    else
      render :report_abuse
    end
  end

  def apply_for_stuff
    @page_title = 'Apply for Stuff'
  end

  def about_pigglecraft
    @page_title = 'About Pigglecraft'
  end

  def suggestions
    @page_title = 'Suggestions'
  end

  def report_params
    params.require(:report).permit(:player, :description, :screenshot, :screenshot_cache)
  end
end
