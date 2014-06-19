class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user!
  layout "welcome"
  # index method initialize and show the index.
  def index
  end  
end
