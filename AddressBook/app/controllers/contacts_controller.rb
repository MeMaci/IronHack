class ContactsController < ApplicationController
  def index
  	@contacts = Contact.show_contact
  end

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(
      name: params[:contact][:name],
      email: params[:contact][:email],
      address: params[:contact][:address],
      phone: params[:contact][:phone]
      )
    @contact.save

    redirect_to '/contacts'
  end
end
