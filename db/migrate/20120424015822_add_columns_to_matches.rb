class AddColumnsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :score1, :integer
    add_column :matches, :score2, :integer
    add_column :matches, :played, :boolean

  end
end
