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
        flash[:notice] = "Thanks for adding a new subject! Select your subject to add a Q&A."
        redirect_to root_path
      else
        render :new
      end
  end

  def category_params
    params.require( :category ).permit( :name)
  end

end
