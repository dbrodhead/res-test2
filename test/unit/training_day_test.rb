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

require 'test_helper'

class TrainingDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
