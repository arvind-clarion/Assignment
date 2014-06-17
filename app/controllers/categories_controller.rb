class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
      if @category.save
        redirect_to @category
      else
        #render plain: "ok"
        render 'new'
        #render html: "<strong>Not Found</strong>"
      end 
  end  

  def show
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    # render :text => params.inspect and return false
    @category = Category.find(params[:id])
    #if @user.update(user_params)
    if @category.update_attributes(params[:category])
      redirect_to @category
    else
      render 'edit'
    end
  end
  
  def destroy
    @category = Category.find(params[:id])  
    @category.destroy
    redirect_to categories_path
  end 
end
