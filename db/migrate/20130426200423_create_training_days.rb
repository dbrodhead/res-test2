class CreateTrainingDays < ActiveRecord::Migration
  def change
    create_table :training_days do |t|
      t.integer :t_cal_day_id
      t.string :weekday
      t.text :details

      t.timestamps
    end
  end
end
