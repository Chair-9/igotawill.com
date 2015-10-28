class NextOfKinsController < ApplicationController
  before_action :require_login

  def new
    @next_of_kin = NextOfKin.new
  end

  def create
    @next_of_kin = NextOfKin.new(next_of_kin_params)
    @next_of_kin.user_id = current_user.id if current_user
    if @next_of_kin.save
      redirect_to root_path, notice: 'You have successfully created your Next of Kin!'
    else
      render :new
    end
  end

  def show
    @next_of_kin = NextOfKin.find(params[:id])
  end

  def edit
    @next_of_kin = NextOfKin.find(params[:id])
  end

  def update
    @next_of_kin = NextOfKin.find(params[:id])
    if @next_of_kin.update(next_of_kin_params)
      redirect_to next_of_kin_path(@next_of_kin), notice: 'You have successfully updated your Next of Kin!'
    else
      render :edit
    end
  end

  def destroy
    NextOfKin.find(params[:id]).destroy
    redirect_to root_path, notice: "Deleted Next of Kin!"
  end

  private

  def next_of_kin_params
    params.require(:next_of_kin).permit(:first_name, :last_name, :phone, :email)
  end
end
