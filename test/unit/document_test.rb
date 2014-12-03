# == Schema Information
#
# Table name: documents
#
#  id                 :integer          not null, primary key
#  paper_id           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  asset_file_name    :string(255)
#  asset_content_type :string(255)
#  asset_file_size    :integer
#  asset_updated_at   :datetime
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
