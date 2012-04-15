class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :manager
      t.integer :heuristic_id

      t.timestamps
    end
  end
end
