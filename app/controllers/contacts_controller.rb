class ContactsController < ApplicationController
  # def index
  #   @categories = Category.all
  # end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end

end