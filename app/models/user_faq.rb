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

class UserFaq < ActiveRecord::Base

  attr_accessible :Question, :paper_id, :paper_attributes
  belongs_to :paper
  validates :Question, :presence => true
end
