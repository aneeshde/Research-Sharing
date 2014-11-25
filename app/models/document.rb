class Document < ActiveRecord::Base
  attr_accessible :name, :paper_id, :path
  belongs_to :paper
end
