FactoryBot.define do
  
  factory :item do
    name                { 'あ' }
    explanation         { 'あ' } 
    category_id         {1}
    status_id           {1}
    shipping_cost_id    {1}
    delivery_area_id    {1}
    days_to_delivery_id {1}
    price               {1234}
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

  end
end
