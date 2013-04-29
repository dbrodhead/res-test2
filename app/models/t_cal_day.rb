# == Schema Information
#
# Table name: t_cal_days
#
#  id         :integer          not null, primary key
#  date       :date
#  details    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TCalDay < ActiveRecord::Base
  attr_accessible :date, :details
  
  has_many :training_days
end
