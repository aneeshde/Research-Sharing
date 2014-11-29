# == Schema Information
#
# Table name: papers
#
#  id                  :integer          not null, primary key
#  title               :string(255)
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#  author_id           :integer
#

require 'test_helper'

class PaperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
