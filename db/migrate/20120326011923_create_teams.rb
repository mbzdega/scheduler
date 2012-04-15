class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :home_field
      t.string :location
      t.integer :rank

      t.timestamps
    end
  end
end
