class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :gender
      t.string :dob

      t.timestamps null: false
    end
  end
end
