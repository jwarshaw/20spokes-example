class ContactController < ApplicationController
  def index
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render :json =>
      {
       :status => 'ok',
       :result => 'Thanks! We will get back to you ASAP.',
       :object => @contact
      }.to_json
    else
      render :json =>
      {
       :status => 'error',
       :result => @contact.errors.full_messages.to_sentence,
       :object => @contact
      }.to_json
    end  end

  private

  def contact_params
  	params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
