class StatusesController < ApplicationController
  
  def index 
    @all_status = Status.all
  end 

  def show 
    @status = Status.find(params[:id])
  end 

  def new 
    
    # @related_status_id = params[:status_id]
    if params[:status_id]
      @status = Status.new(status_id: params[:status_id])
      # render :reply_form
    else
      @status = Status.new 
    end
    
    1.times { @status.media.build }
  end

  def create
    puts status_params 
    @status = Status.new(status_params)
    @user = User.new(handle: 'handlename', display_name: 'handle name', bio: nil, born_at: Date.current - 20.years)
    @user.save

    return redirect_to @status if @status.save

    render :new, status: :unprocessable_entity

  end 

  def edit 
    @status = Status.find(params[:id])

  end 

  def update 
    @status = Status.find(params[:id])

    return redirect_to @status if @status.update(status_params)
    render :edit, status: :unprocessable_entity
  end 

  def destroy 
    @status = Status.find(params[:id])
    @status.destroy 

    redirect_to statuses_path
  end 

  private 

  def status_params 
    params.require(:status).permit(:id, :body, :user_id, :status_id, media_attributes: [:kind, :url, :id])
  end 

end 
