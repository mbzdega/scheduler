class RemoveDateFromSeasons < ActiveRecord::Migration
  def up
    change_table :seasons do |t|
      t.remove :date
    end
  end

  def down
    add_column :date
  end
end
