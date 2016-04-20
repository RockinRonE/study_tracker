class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
    	t.string :title
    	t.string :principal_investigator

    	t.timestamps null: false
    end
  end
end
