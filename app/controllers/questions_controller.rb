class QuestionsController < ApplicationController
  before_filter :set_category
  
  def index
    @questions = @category.questions
  end

  def show
    @question = @category.questions.find(params[:id])
  end

  def create
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end
end
