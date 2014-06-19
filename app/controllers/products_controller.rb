class ProductsController < ApplicationController
  #create an instance of CategororiesController and run the new method.
  def new
    @product = Product.new
  end
  #If it doesn't save, the user is sent back to the new method.
  #if it save then it takes parameters from the new method and forward to the show method. 
  def create
    @product = Product.new(params[:product])
      if @product.save
        redirect_to @product
      else
        render 'new'
      end 
  end  
  #show method shows data which are saved in create method.
  def show
    @product = Product.find(params[:id])
  end
  #index method shows all the data which are saved in database table.
  def index
    @products = Product.all
  end
  #edit method used to edit previous stored data.
  def edit
    @product = Product.find(params[:id])
  end
  # its use to update the data if its any error then its redirect to the edit method.
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product
    else
      render 'edit'
    end
  end
  # destroy method delete the record
  def destroy
    @product = Product.find(params[:id])  
    @product.destroy
    redirect_to products_path
  end 
end
