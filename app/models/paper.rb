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

class Paper < ActiveRecord::Base

  attr_accessible :author, :description, :title, :author_id, :author_attributes,:tag_list
  validates :title, :presence => true
  #validates :description, :presence => true
  #validates :author_id, :presence => true

  belongs_to :author
  has_many :documents

  has_many :faqs, :inverse_of=>:paper

  acts_as_taggable

  #accepts_nested_attributes_for :uploads, :allow_destroy => true

  #has_attached_file :document,
                   #:url  => "/assets/upload/"
                   # :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  #validates_attachment_content_type :document
  #                                   :content_type => ['application/pdf'],
  #                                   :message => "only pdf files are allowed"

end
