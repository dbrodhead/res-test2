class CreateTCalDays < ActiveRecord::Migration
  def change
    create_table :t_cal_days do |t|
      t.date :date
      t.text :details

      t.timestamps
    end
  end
end
