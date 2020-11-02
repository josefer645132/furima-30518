require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nickname,email,password,password_confirmation,family_name,first_name,family_name_frigana,first_name_frigana,birthdayが存在すれば登録できる" do
        end
      it 'passwordが6文字以上であれば登録できる' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
         end  
    end

    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
      end
      it "emailが空では登録できない" do
      end
      it "重複したemailが存在する場合登録できない" do
      end
      it "passwordが空では登録できない" do
      end
      it "passwordが5文字以下では登録できない" do
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
      end
      it 'passwordが半角英数字を含まなければ登録できない' do
      end
      it 'family_name,first_name,family_name_frigana,first_name_friganaが全角でなければ登録できない'do
      end
    end 
  end
end
  
    
    
    
    
    

    
      

    
    
  
  
  
  
  

