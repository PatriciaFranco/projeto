# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :promocao do
    data_inicio "2014-10-20"
    data_fim "2014-10-20"
    abragencia 1.5
    empresa nil
  end
end
