class SearchPage < ActiveRecord::Base
  attr_accessible :SPARK_publication_date, :author, :publication_date, :title, 
  # :tag_list
  
  # acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :title
  
  def self.search(search)
  		if search
    		SearchPage.where("title LIKE ? OR author LIKE ?", "%#{search}%","%#{search}%")
    	else
    		find(:all)
  		end
	end
end