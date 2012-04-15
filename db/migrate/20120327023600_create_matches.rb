class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :schedule_id
      t.integer :field_id
      t.datetime :play_time

      t.timestamps
    end
  end
end
