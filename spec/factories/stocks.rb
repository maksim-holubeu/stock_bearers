FactoryBot.define do
  factory :stock do
    name { "MyString" }
    bearer { create(:bearer) }
  end
end
