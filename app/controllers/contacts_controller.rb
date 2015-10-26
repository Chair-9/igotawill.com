class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path(@contact), notice: 'You have successfully created your Contact Info!'
    else
      render :new
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contact_path(@contact), notice: 'You have successfully created your Contact Info!'
    else
      render :edit
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to root_path, notice: "Deleted Contact!"
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone, :address_line_1,
                                 :address_line_2, :city, :state, :postal_code, :country)
  end
end
