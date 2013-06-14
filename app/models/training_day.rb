# == Schema Information
#
# Table name: training_days
#
#  id           :integer          not null, primary key
#  t_cal_day_id :integer
#  weekday      :string(255)
#  details      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TrainingDay < ActiveRecord::Base
  attr_accessible :details, :day, :weekday
  
  has_many :tsessions
  has_many :trades, :through => :tsessions
end
