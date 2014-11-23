class FaqsController < ApplicationController
  before_filter :set_faq, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @faqs = Faq.all

    if params[:tag]
      @faqs = Faq.tagged_with(params[:tag])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faqs }
    end
  end

  def show
    respond_with(@faq)
  end

  def new
    @faq = Faq.new
    respond_with(@faq)
  end

  def edit
  end

  def create
    @faq = Faq.new(params[:faq])
    @faq.save
    respond_with(@faq)
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
