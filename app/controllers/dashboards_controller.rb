class DashboardsController < ApplicationController
  before_action :require_login

  def show
    @contacts = current_user.contacts
  end



end
