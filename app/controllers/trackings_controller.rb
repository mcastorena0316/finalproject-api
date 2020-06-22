class TrackingsController < ApplicationController
  def index
    @illness = Illness.find(params[:illness_id])
    render json: @illness.trackings
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 500,
      errors: ['Tracking not found']
    }
  end

  def show
    @tracking = Tracking.find(params[:id])

    @illness = Illness.find(params[:illness_id])
    render json: @tracking
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 500,
      errors: ['Tracking not found']
    }
  end

  def create
    @illness = Illness.find(params[:illness_id])
    @tracking = Tracking.new(tracking_params)

    render json: @tracking if @tracking.save
  rescue ActionController::ParameterMissing
    render json: { error: 'Unable to create Tracking' }, status: 400
  end

  def update
    @tracking = Tracking.find(params[:id])
    @illness = Illness.find(params[:illness_id])
    if @tracking
      @tracking.update(tracking_params)
      render json: { message: 'Date succesfully updated' }, status: 200
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Unable to update Tracking' }, status: 400
  end

  def destroy
    @tracking = Tracking.find(params[:id])
    @illness = Illness.find(params[:illness_id])
    if @tracking
      @tracking.destroy
      render json: { message: 'Date succesfully deleted' }, status: 200
    else

      render json: { error: 'Unable to delete Date' }, status: 400
    end
  end

  private

  def tracking_params
    params.require(:tracking).permit(:id, :date, :mood, :temperature, :illness_id, medicines: [], symptons: [])
  end
end
