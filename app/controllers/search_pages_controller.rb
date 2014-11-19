class SearchPagesController < ApplicationController
  # GET /search_pages
  # GET /search_pages.json

  # def index
  #   @search_pages = SearchPage.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @search_pages }
  #   end
  # end

  def index
 
    # @search_pages =SearchPage.search(params)
    @search_pages =SearchPage.search(params[:search])
  
    if params[:tag]
      @search_pages = SearchPage.tagged_with(params[:tag])
    # else
    #   @search_pages = SearchPage.all
    end
    
    respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @search_pages }
    end

  end


  # GET /search_pages/1
  # GET /search_pages/1.json
  def show
    @search_page = SearchPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_page }
    end
  end

  # GET /search_pages/new
  # GET /search_pages/new.json
  def new
    @search_page = SearchPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_page }
    end
  end

  # GET /search_pages/1/edit
  def edit
    @search_page = SearchPage.find(params[:id])
  end

  # POST /search_pages
  # POST /search_pages.json
  def create
    @search_page = SearchPage.new(params[:search_page])

    respond_to do |format|
      if @search_page.save
        format.html { redirect_to @search_page, notice: 'Search page was successfully created.' }
        format.json { render json: @search_page, status: :created, location: @search_page }
      else
        format.html { render action: "new" }
        format.json { render json: @search_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_pages/1
  # PUT /search_pages/1.json
  def update
    @search_page = SearchPage.find(params[:id])

    respond_to do |format|
      if @search_page.update_attributes(params[:search_page])
        format.html { redirect_to @search_page, notice: 'Search page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_pages/1
  # DELETE /search_pages/1.json
  def destroy
    @search_page = SearchPage.find(params[:id])
    @search_page.destroy

    respond_to do |format|
      format.html { redirect_to search_pages_url }
      format.json { head :no_content }
    end
  end
end
