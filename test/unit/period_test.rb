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

require 'test_helper'

class PeriodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
