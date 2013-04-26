# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  number     :integer
#  stime      :time
#  etime      :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Period < ActiveRecord::Base
  attr_accessible :etime, :name, :number, :stime
end
