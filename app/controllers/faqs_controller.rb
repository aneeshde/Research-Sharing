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
    @faq.paper_id = params[:paper_id]
    #
    # @faq.type1 = 0
    # @faq.type1 = 1 if author_signed_in?
# <<<<<<< HEAD
#     @paper = Paper.find(params[:paper_id])
#     @faq.paper_id = params[:paper_id]
#     @faq.save
#     respond_with(@paper.faq)
# =======

    # Pierre's version
    @faq.save
    @paper = Paper.find(@faq.paper_id)
    respond_with(@paper, @faq)
# >>>>>>> 55c3a8d0ddf0b1fa2ccd591fea043ea18c6b2b92
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
