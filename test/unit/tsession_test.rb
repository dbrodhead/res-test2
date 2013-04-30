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

require 'test_helper'

class TsessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
