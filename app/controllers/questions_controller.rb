class QuestionsController < ApplicationController
  before_filter :set_category

  def index
    @questions = @category.questions
  end

  def new
    @question = Question.new
    @question.category_id = params[:category_id]
  end

  def create
    @question = Question.create!( question_params )
    @question.category = @category

      if @question.save
        flash[:notice] = "Thanks for adding a question! You just helped a lot of people
        by addinng that question with an awesome answer. You must be a wonderfull person!"
        redirect_to category_questions_path(@category)
      else
        render :new
      end
  end

  def question_params
    params.require( :question ).permit( :question, :answer)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end
end
