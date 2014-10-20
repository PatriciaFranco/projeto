# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :empresa do
    nome "MyString"
    endereco "MyString"
    telefone "MyString"
    cnpj "MyString"
    latitude 1.5
    longitude 1.5
  end
end
