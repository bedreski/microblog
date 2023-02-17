class StatusesController < ApplicationController
  
  def index 
    @all_status = Status.all
  end 

  def show 
    @status = Status.find(params[:id])
    @media = Medium.find(params[:id])
  end 

  def new 
    
    if params[:replied_id]
      @status = Status.new(replied_id: params[:replied_id])
    else
      @status = Status.new 
    end
    
    4.times { @status.media.build }
  end

  def create

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
    params.require(:status).permit(:id, :body, :user_id, :replied_id, media_attributes: [:kind, :url, :id])
  end 

end 
