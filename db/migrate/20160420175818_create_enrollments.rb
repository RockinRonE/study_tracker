class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :site, index: true, foreign_key: true
      t.references :study, index: true, foreign_key: true
      t.references :participant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
