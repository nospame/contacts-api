class ContactsController < ApplicationController

  def show
    contact = Contact.find_by(id: params[:id])
    render json: contact.as_json
  end

  def index
    contacts = Contact.all
    render json: contacts.as_json
  end

  def new
    geocode = Geocoder.search(params[:address])
    contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      latitude: geocode.first.coordinates[0],
      longitude: geocode.first.coordinates[1]
    )
    contact.save
    render json: contact.as_json
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    render json: {message: "Contact deleted."}
  end

  def nearest
    contact = Contact.find_by(id: params[:id])
    venue = Contact.near([contact.latitude, contact.longitude])
    render json: venue.as_json
  end

end
