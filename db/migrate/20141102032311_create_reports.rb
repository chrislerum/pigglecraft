class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :player
      t.text :description

      t.timestamps
    end
  end
end
