class UserFaqsController < ApplicationController
  before_filter :set_user_faq, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  before_filter :prepare_papers

  def index
    @user_faqs = UserFaq.all
    respond_with(@user_faqs)
  end

  def show
    respond_with(@user_faq)
  end

  def new
    @user_faq = UserFaq.new
    respond_with(@user_faq)
  end

  def edit
  end

  def create
    @user_faq = UserFaq.new(params[:user_faq])
    @user_faq.save
    respond_with(@user_faq)
  end

  def update
    @user_faq.update_attributes(params[:user_faq])
    respond_with(@user_faq)
  end

  def destroy
    @user_faq.destroy
    respond_with(@user_faq)
  end

  private
    def set_user_faq
      @user_faq = UserFaq.find(params[:id])
    end

  private
    def prepare_papers
      @papers = Paper.all
    end
end
