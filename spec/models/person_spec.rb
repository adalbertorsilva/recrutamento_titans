require 'rails_helper'

RSpec.describe Person, type: :model do

  it {should validate_presence_of :name}

  it {should validate_presence_of :age}

  it {should validate_presence_of :height}

  it {should validate_presence_of :weight}

  it {should validate_presence_of :phone_number}

  it {should validate_presence_of :email}

  it {should validate_presence_of :photo}

  it {should validate_presence_of :rg}

  it {should validate_presence_of :cpf}

  it {should validate_presence_of :birth_date}

  it "must have a unique cpf" do
    create(:person, cpf: 123456789)
    expect(build(:person, cpf: 123456789)).to_not be_valid
  end

end
