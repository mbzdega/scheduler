class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :match_id
      t.integer :team_id

      t.timestamps
    end
  end
end
