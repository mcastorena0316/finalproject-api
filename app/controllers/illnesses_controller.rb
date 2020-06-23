class IllnessesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    render json: @user.illnesses
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 500,
      errors: ['Illness not found']
    }
  end

  def show
    @user = User.find(params[:user_id])
    @illness = Illness.find(params[:id])
    render json: @illness
  rescue ActiveRecord::RecordNotFound
    render json: {
      status: 500,
      errors: ['Illness not found']
    }
  end

  def create
    @user = User.find(params[:user_id])
    @illness = Illness.new(illness_params)

    render json: @illness if @illness.save
  rescue ActionController::ParameterMissing
    render json: { error: 'Unable to create Illness' }, status: 400
  end

  def update
    @user = User.find(params[:user_id])
    @illness = Illness.find(params[:id])
    if @illness
      @illness.update(illness_params)
      render json: { message: 'Illness succesfully updated' }, status: 200
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Unable to update Illness' }, status: 400
  end

  def destroy
    @user = User.find(params[:user_id])
    @illness = Illness.find(params[:id])
    if @illness
      @illness.destroy
      render json: { message: 'Illness succesfully deleted' }, status: 200
    else

      render json: { error: 'Unable to delete Illness' }, status: 400
    end
  end

  private

  def illness_params
    params.require(:illness).permit(:name, :description, :user_id, :id)
  end
end
