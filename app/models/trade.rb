# == Schema Information
#
# Table name: trades
#
#  id         :integer          not null, primary key
#  trade      :string(255)
#  mosid      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trade < ActiveRecord::Base
  attr_accessible :mosid, :trade
  
  has_many :tsessions
  has_many :training_days, :through => :tsessions
end
