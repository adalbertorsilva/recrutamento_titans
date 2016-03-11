class PeopleController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @person = Person.new(person_params)

    if @person.save
      puts "Salvou !"
    else
      puts "Não salvou :("
    end
     
    render nothing: true
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :height, :weight, :phone_number, :email, :photo)
  end

end
