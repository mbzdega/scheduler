class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :season_id
      t.integer :team_id
      t.timestamps
    end
  end
end
