class AddScreenshotToReports < ActiveRecord::Migration
  def change
    add_column :reports, :screenshot, :string
  end
end
