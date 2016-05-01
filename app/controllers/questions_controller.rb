class QuestionsController < ApplicationController
  before_filter :set_category

  def index
    @questions = @category.questions
  end

  def show
    @question = @category.questions.find(params[:id])
  end

  def new
    @question = Question.new
    @question.category_id = params[:category_id]
  end

  def create
    question = Question.new( question_params )

      if question.save
        flash[:notice] = "Thanks for adding a new question!"
        redirect_to category_path(@category)
      else
        render :new
      end
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end

  def question_params
    params.require( :question ).permit( :question, :answer)
  end

end
