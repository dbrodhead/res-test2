class Removetcaldays2 < ActiveRecord::Migration
  def up
    remove_column :training_days, :t_cal_day_id
    drop_table :t_cal_days
  end

  def down
  end
end
