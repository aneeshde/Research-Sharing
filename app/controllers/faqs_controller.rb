class FaqsController < ApplicationController
  before_filter :set_faq, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @faqs = Faq.where("paper_id = ?", params[:paper_id])
    @paper = Paper.find(params[:paper_id])
    if params[:tag]
      @faqs = Faq.tagged_with(params[:tag])
    end


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faqs }
    end
  end

  def show
    respond_with(@paper,@faq)
  end

  def new
    @faq = Faq.new
    @faq.paper_id = params[:paper_id]
    @paper = Paper.find(params[:paper_id])
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def create
    @faq = Faq.new(params[:faq])
    @faq.paper_id = params[:paper_id]
    @faq.save
    @paper = Paper.find(@faq.paper_id)

    respond_with(@paper,@faq)

  end

  def update
    @paper = Paper.find(params[:paper_id])
    @faq = Faq.find(params[:id])
    @faq.update_attributes(params[:faq])
    respond_with(@paper,@faq)
  end

  def destroy
    @paper = @faq.paper
    @faq.destroy
    respond_with @paper
  end

  private
    def set_faq
      @faq = Faq.find(params[:id])
    end
end
