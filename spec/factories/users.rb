FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "email#{i}@domain.tld" }
    sequence(:password) { |i| "password#{i}" }
  end
end
