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

class Document < ActiveRecord::Base
  attr_accessible :name, :paper_id, :path
  belongs_to :paper
  attr_accessible :asset
  has_attached_file :asset
  do_not_validate_attachment_file_type :asset
end
