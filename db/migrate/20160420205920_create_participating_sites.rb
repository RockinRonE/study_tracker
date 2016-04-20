class CreateParticipatingSites < ActiveRecord::Migration
  def change
    create_table :participating_sites do |t|
    	t.belongs_to :site, index: true
    	t.belongs_to :study, index: true
    
      t.timestamps null: false
    end
  end
end
