class CreateCaps < ActiveRecord::Migration
  def change
    create_table :caps do |t|
      t.integer :team_id
      t.integer :match_id
      t.timestamps
    end
  end
end
