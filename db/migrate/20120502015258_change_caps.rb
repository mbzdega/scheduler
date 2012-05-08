class ChangeCaps < ActiveRecord::Migration
  def change
    add_column :caps, :user_id, :integer
    remove_column :caps, :team_id

  end
end
