class Removetcaldays < ActiveRecord::Migration
  def up
    add_column :training_days, :day, :date
  end

  def down
    remove_column :training_days, :t_cal_day_id
    drop_table :t_cal_days
  end
end
