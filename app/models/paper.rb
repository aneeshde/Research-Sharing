# == Schema Information
#
# Table name: papers
#
#  id                    :integer          not null, primary key
#  title                 :string(255)
#  description           :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  attach_file_name      :string(255)
#  attach_content_type   :string(255)
#  attach_file_size      :integer
#  attach_updated_at     :datetime
#  author_id             :integer
#  document_file_name    :string(255)
#  document_content_type :string(255)
#  document_file_size    :integer
#  document_updated_at   :datetime
#

class Paper < ActiveRecord::Base

  attr_accessible :author, :description, :title, :author_id, :author_attributes,:tag_list
  validates :title, :presence => true
  belongs_to :author

  has_many :faqs

  acts_as_taggable

  def self.search(search)
      if search
        Paper.where(" title LIKE ?", "%#{search}%")
      else
        find(:all)
      end
  end

  #accepts_nested_attributes_for :uploads, :allow_destroy => true

  #has_attached_file :document,
                   #:url  => "/assets/upload/"
                   # :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  #validates_attachment_content_type :document
  #                                   :content_type => ['application/pdf'],
  #                                   :message => "only pdf files are allowed"

end
