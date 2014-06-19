class CategoriesController < ApplicationController
  #create an instance of CategororiesController and run the new method.
  def new
    @category = Category.new
  end
  #If it doesn't save, the user is sent back to the new method.
  #if it save then it takes parameters from the new method and forward to the show method. 
  def create
    @category = Category.new(params[:category])
      if @category.save
        redirect_to @category
      else
        render 'new'
      end 
  end  
  #show method shows data which are saved in create method.
  def show
    @category = Category.find(params[:id])
  end
  #index method shows all the data which are saved in database table.
  def index
    @categories = Category.all
  end
  #edit method used to edit previous stored data.
  def edit
    @category = Category.find(params[:id])
  end
  # its use to update the data if its any error then its redirect to the edit method.
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to @category
    else
      render 'edit'
    end
  end
  # destroy method delete the record
  def destroy
    @category = Category.find(params[:id])  
    @category.destroy
    redirect_to categories_path
  end 
end
