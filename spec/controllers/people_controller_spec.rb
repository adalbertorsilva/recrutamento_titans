require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

  context "user creates a new person" do

    it "must persist the person" do

      person = build(:person)

      post :create, person: instanciate_person_params(person)
      expect(assigns(:person).id.nil?).to be false

    end

  end


  private

  def instanciate_person_params(person)
    {name: person.name, age: person.age, height: person.height, weight: person.weight, phone_number: person.phone_number, email: person.email, photo: person.photo}
  end

end
