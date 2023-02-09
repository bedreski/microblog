class StatusesController < ApplicationController
  
  def index 
    @all_status = Status.all
  end 

  def create
  end 

  def new 
  end

end 
