class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        with_options presence: true do 
          validates :family_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "Full-width characters."}
         validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "Full-width characters."}
         validates :family_name_frigana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "Full-width katakana characters."}
         validates :first_name_frigana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "Full-width katakana characters."}
         validates :birthday, presence: true
         validates :nickname, presence: true
        end
         has_many :items
         has_many :purchase_records
      end
