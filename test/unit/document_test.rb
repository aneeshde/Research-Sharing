# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  path       :string(255)
#  paper_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
