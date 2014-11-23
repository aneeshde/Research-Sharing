class Faq < ActiveRecord::Base
  attr_accessible :answer, :question, :paper_id, :tag_list
  acts_as_taggable
  belongs_to :paper
end
