class PapersController < ApplicationController
  # GET /papers
  # GET /papers.json

  def search(search)
      if search
        Paper.where(" title LIKE ?", "%#{search}%")
      else
        find(:all)
      end
  end

  def index
    

    @papers = Paper.where("author_id = ?", current_author.id) if (author_signed_in? && params[:search].blank?)

    if params[:search]
      @papers = search(params[:search])
      puts @papers  
    end

    if params[:tag]
      @papers = Paper.tagged_with(params[:tag])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @papers }
    end
  end

  # GET /papers/1
  # GET /papers/1.json
  def show
    @paper = Paper.find(params[:id])
    @document = Document.where(paper_id: @paper.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paper }
    end
  end

  # GET /papers/new
  # GET /papers/new.json
  def new
    @paper = Paper.new
    @document = @paper.documents.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paper }
    end
  end

  # GET /papers/1/edit
  def edit
    @paper = Paper.find(params[:id])
  end

  # POST /papers
  # POST /papers.json
  def create
    @paper = Paper.new(params[:paper])
    @paper.author_id = current_author.id
    @document = @paper.documents.new(params[:document])
    respond_to do |format|
      if @paper.save
        File.open("public/system/uploads/#{@document.id}/#{@document.asset_file_name}", "rb") do |io|
          reader = PDF::Reader.new(io)
          if reader.page_count > 10
            @paper.destroy
            @papers = Paper.where("author_id = ?", current_author.id)
            format.html { redirect_to action: "index",  notice: 'Document cannot exceed 10 pages' }
          else
            format.html { redirect_to @paper, notice: 'Paper was successfully created.' }
            format.json { render json: @paper, status: :created, location: @paper }
          end
        end
        
      else
        #format.html { redirect_to @paper, notice: 'Paper was successfully created.' }
        #format.json { render json: @paper, status: :created, location: @paper }
        format.html { render action: "new" }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /papers/1
  # PUT /papers/1.json
  def update
    @paper = Paper.find(params[:id])

    respond_to do |format|
      if @paper.update_attributes(params[:paper])
        format.html { redirect_to @paper, notice: 'Paper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papers/1
  # DELETE /papers/1.json
  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy

    respond_to do |format|
      format.html { redirect_to papers_url }
      format.json { head :no_content }
    end
  end
end
