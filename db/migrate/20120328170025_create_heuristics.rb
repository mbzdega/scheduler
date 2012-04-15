class CreateHeuristics < ActiveRecord::Migration
  def change
    create_table :heuristics do |t|
      t.string :name

      t.timestamps
    end
  end
end
