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

require 'test_helper'

class TradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
