class AddCurrentToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :current, :boolean

  end
end
