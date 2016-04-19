class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.string :investigator
      t.boolean :state, default: true

      t.timestamps null: false
    end
  end
end
