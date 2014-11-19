class SearchPage < ActiveRecord::Base
  attr_accessible :SPARK_publication_date, :author, :publication_date, :title,:tag_list
  
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :title
  
  def self.search(search)
  		if search
    		SearchPage.where("title LIKE ? OR author LIKE ? OR publication_date LIKE ? OR SPARK_publication_date LIKE ?", "%#{search}%","%#{search}%", "%#{search}%", "%#{search}%")
        # SearchPage.where("title LIKE ?", "%#{search}%")    
    	else
    		find(:all)
  		end
	end

  # def self.search(params)
  #     if params[:title] and params[:author]
  #       SearchPage.where("title LIKE ? AND author LIKE ? ", "%#{params[:title]}%","%#{params[:author]}%") 
  #     elsif params[:title]
  #       SearchPage.where("title LIKE ?", "%#{params[:title]}%") 
  #     elsif params[:author]
  #       SearchPage.where("author LIKE ?", "%#{params[:author]}%") 
  #     else
  #       find(:all)
  #     end
  # end
end