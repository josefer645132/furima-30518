class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one    :purchase_record
  has_one_attached :image

  belongs_to_active_hash :category_id
  belongs_to_active_hash :status_id
  belongs_to_active_hash :shipping_cost_id
  belongs_to_active_hash :delivery_area_id
  belongs_to_active_hash :days_to_delivery_id


  with_options presence: true do 
  validates :category_id
  validates :status_id
  validates :shipping_cost_id
  validates :delivery_area_id
  validates :days_to_delivery_id

  end

end
