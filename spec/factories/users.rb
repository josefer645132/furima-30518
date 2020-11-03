FactoryBot.define do
  factory :user do
    nickname              { 'nickname' }
    email                 { 'kkk@gmail.com' }
    password              { '000000'}
    password_confirmation { password }
    family_name           { 'family_name' }
    family_name_frigana   { 'family_name_frigana' }
    first_name            { 'first_name' }
    first_name_frigana    { 'first_name_frigana' }
    birthday              { 'birthday' }
    

  
  
  
  end
end
