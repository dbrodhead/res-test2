# == Schema Information
#
# Table name: tsessions
#
#  id              :integer          not null, primary key
#  training_day_id :integer
#  trade_id        :integer
#  period_id       :integer
#  instructor      :string(255)
#  activity        :text
#  location        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Tsession < ActiveRecord::Base
  attr_accessible :activity, :instructor, :location, :period_id, :trade_id, :training_day_id
  
  belongs_to :training_day
  belongs_to :trade
  belongs_to :period
end
