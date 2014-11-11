# == Schema Information
#
# Table name: user_faqs
#
#  id         :integer          not null, primary key
#  Question   :text
#  paper_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserFaqTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
