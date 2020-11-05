FactoryBot.define do
  factory :user do
    nickname              { 'nickname' }
    email                 { 'kkk@gmail.com' }
    password              { 'aaa0000' } 
    password_confirmation { password }
    family_name           { 'あ' }
    family_name_frigana   { 'ア' }
    first_name            { 'い' }
    first_name_frigana    { 'イ' }
    birthday              { '111111' }
    

  
  
  
  end
end
