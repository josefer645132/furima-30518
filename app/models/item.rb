class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one    :purchase_record
  has_one_attached :image


  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :shipping_cost
  belongs_to_active_hash :delivery_area
  belongs_to_active_hash :days_to_delivery


  with_options presence: true do 
  validates :image
  validates :name ,length: { maximum: 40, message: 'は40文字以入力してください。' }
  validates :explanation ,length: { maximum: 1000, message: 'は1000文字以入力してください。' }
  validates :category_id ,numericality: { other_than: 0, message: 'can’t be blank' } 
  validates :status_id ,numericality: { other_than: 0, message: 'can’t be blank' } 
  validates :shipping_cost_id ,numericality: { other_than: 0, message: 'can’t be blank' } 
  validates :delivery_area_id ,numericality: { other_than: 0, message: 'can’t be blank' } 
  validates :days_to_delivery_id ,numericality: { other_than: 0, message: 'can’t be blank' } 
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: 'out of setting range' }
  
  end

end




