# == Schema Information
#
# Table name: documents
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  path               :string(255)
#  paper_id           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  asset_file_name    :string(255)
#  asset_content_type :string(255)
#  asset_file_size    :integer
#  asset_updated_at   :datetime
#

class Document < ActiveRecord::Base
  attr_accessible :name, :paper_id, :path
  belongs_to :paper
  attr_accessible :asset, :path => ":rails_root/public/attachments/"
  has_attached_file :asset
  do_not_validate_attachment_file_type :asset
end
