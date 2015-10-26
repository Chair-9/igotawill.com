class WillsController < ApplicationController
  before_action :require_login

  def new
    @will = Will.new
  end

  def create
    @will = Will.new(will_params)
    @will.user_id = current_user.id if current_user
    if @will.save
      redirect_to will_path(@will), notice: 'You have successfully created your Will, but still need to Sign it!'
    else
      render :new
    end
  end

  def show
    @will = Will.find(params[:id])
  end

  def edit
    @will = Will.find(params[:id])
  end

  def update
    @will = Will.find(params[:id])
    if @will.update(will_params)
      redirect_to will_path(@will), notice: 'You have successfully updated your Will, but still need to Sign it!'
    else
      render :edit
    end
  end

  def destroy
    Will.find(params[:id]).destroy
    redirect_to root_path, notice: "Deleted Will!"
  end

  private

  def will_params
    params.require(:will).permit(:comments, :title, :date, :executor,
                                 :estate_plan, :burial_wishes)
  end
end
