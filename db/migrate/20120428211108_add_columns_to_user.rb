class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :player, :boolean
    add_column :users, :coach, :boolean
    add_column :users, :team_manager, :boolean
    add_column :users, :league_manager, :boolean
  end
end
