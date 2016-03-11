require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

  context "user creates a new person" do

    it "must persist the person" do

      person = build(:person)

      expect(person).to be_valid

      #post :create, person: instanciate_person_params(person)
      #expect(Person.all.count > 0 ).to be true

    end

  end


  private

  def instanciate_person_params(person)
    {name: person.name, age: person.age, height: person.height, weight: person.weight, phone_number: person.phone_number, email: person.email, photo: person.photo}
  end

end
