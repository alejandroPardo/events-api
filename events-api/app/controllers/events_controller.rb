class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end

  def create
    event = Event.new(event_params)
    event.save
    render json: event
  end

  def update
    puts params
    event = Event.find(params[:id])
    event.update(event_params)
    event.save!
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy!
  end

  private

  def event_params
    params.require(:event).permit(:id, :title, :description, :start_date, :end_date)
  end
end
