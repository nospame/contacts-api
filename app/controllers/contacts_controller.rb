class ContactsController < ApplicationController

  def first_person
    person = Contact.first
    render json: person.as_json
  end

  def all_people
    people = Contact.all
    render json: people.as_json
  end

end
