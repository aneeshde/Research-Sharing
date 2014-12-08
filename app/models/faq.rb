# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  question   :string(255)
#  answer     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  paper_id   :integer
#  type1      :integer
#

class Faq < ActiveRecord::Base
  attr_accessible :answer, :question, :paper_id, :tag_list
  acts_as_taggable
  belongs_to :paper

  #validates :question, :presence => true
  #validates_uniqueness_of :question, scope: [:paper_id]
end
