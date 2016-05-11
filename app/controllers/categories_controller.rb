class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create!( category_params )
      if @category.save
        flash[:notice] = "Thanks for being so awesome! Select your new subject and add some Q&A's to that baby."
        redirect_to root_path
      else
        render :new
      end
  end

  def category_params
    params.require( :category ).permit( :name, :description)
  end

end
