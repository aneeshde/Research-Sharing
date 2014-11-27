class FaqsController < ApplicationController
  before_filter :set_faq, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @faqs = Faq.where("paper_id = ?", params[:paper_id])

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
  end

  def edit
  end

  def create
    @faq = Faq.new(params[:faq])
    #
    # @faq.type1 = 0
    # @faq.type1 = 1 if author_signed_in?
    @faq.save
    @paper = Paper.find(@faq.paper_id)
    respond_with(@paper, @faq)
  end

  def update
    @faq.update_attributes(params[:faq])
    respond_with(@faq)
  end

  def destroy
    @faq.destroy
    respond_with(@faq)
  end

  private
    def set_faq
      @faq = Faq.find(params[:id])
    end
end
