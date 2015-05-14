class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.date :date
      t.time :startTime
      t.time :endTime
      t.references :user, index: true, foreign_key: true
    end
  end
end
