FactoryGirl.define do
  factory :person do
    name{Faker::Name.name}
    age{Faker::Number.between(18,40)}
    height{Faker::Number.decimal(1)}
    weight{Faker::Number.decimal(2)}
    phone_number{Faker::PhoneNumber.phone_number}
    email{Faker::Internet.email}
    photo{Faker::Hipster.sentence}
    rg{Faker::Number.number(6)}
    cpf{Faker::Number.number(9)}
    birth_date{Faker::Date.backward(50)}
  end

end
