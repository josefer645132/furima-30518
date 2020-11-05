class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        
         validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: "Include both letters and numbers."}
         
         with_options presence: true do 
         validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "Full-width characters."}
         validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "Full-width characters."}
         validates :family_name_frigana, format: { with: /\A[ァ-ヶー－]+\z/, message: "Full-width katakana characters."}
         validates :first_name_frigana, format: { with: /\A[ァ-ヶー－]+\z/, message: "Full-width katakana characters."}
         validates :birthday
         validates :nickname
         validates :email
         
        end
         has_many :items
         has_many :purchase_records
      end
