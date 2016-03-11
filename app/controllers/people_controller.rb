class PeopleController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @person = Person.new(person_params)
    @person.save
    render nothing: true
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :height, :weight, :phone_number, :email, :photo)
  end

end
