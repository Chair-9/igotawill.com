class DashboardsController < ApplicationController

  def show
    @contacts = Contact.all
  end



end
