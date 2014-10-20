# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produto do
    nome "MyString"
    descricao "MyString"
    empresa nil
  end
end
