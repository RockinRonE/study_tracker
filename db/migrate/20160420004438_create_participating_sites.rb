class CreateParticipatingSites < ActiveRecord::Migration
  def change
    create_table :participating_sites do |t|
      t.references :study, index: true, foreign_key: true
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
