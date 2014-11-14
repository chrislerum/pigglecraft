class CreateCustomTexts < ActiveRecord::Migration
  def change
    create_table :custom_texts do |t|
      t.string :name
      t.text :the_text

      t.timestamps
    end
  end
end
