class Upload < ActiveRecord::Base
  belongs_to :paper
  has_attached_file :document
  # attr_accessible :title, :body

end
