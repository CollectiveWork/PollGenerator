class PollersController < ApplicationController
  before_action :check_poller 

  def index
  end

  def show
  end

  def new
  end

  def edit
  end
  def create
    answer = Answer.find(params[:answer_id])
    answer.count += 1
    answer.save

    poller = Poller.new
    poller.ip = request.remote_ip
    poller.location = cookies[:location]
    poller.answer_id = params[:answer_id]
    poller.save

    cookies[:voted] = "true"
    redirect_to root_path
  end

  def update
    
  end

  def destroy
   
  end

  private
    def check_poller
      redirect_to root_path if cookies.has_key? :voted
    end

end
