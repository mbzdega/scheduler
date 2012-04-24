class AddColumnstToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :gender, :string
  end
end
