class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:index]

  #before_filter :only => :index do |categories|
  #categories.instance_eval do
    #redirect_to categories_path(params[:id])
  #end
#end
end
