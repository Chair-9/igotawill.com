class DashboardsController < ApplicationController
  before_action :require_login

  def show
    @contacts = current_user.contacts
    @next_of_kins = current_user.next_of_kins
    @wills = current_user.wills
  end



end
