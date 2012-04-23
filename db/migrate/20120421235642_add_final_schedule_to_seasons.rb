class AddFinalScheduleToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :final_schedule, :integer

  end
end
