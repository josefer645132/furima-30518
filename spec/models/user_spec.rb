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
       @user.nickname = nil
       @user.valid?
       expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      
      it "emailが空では登録できない" do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      
      it "passwordが空では登録できない" do
       @user.password = nil
       @user.valid?
       expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      
      it "passwordが5文字以下では登録できない" do
        @user.password = '00000'
        @user.password_confirmation = '00000'
          @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      
      it 'passwordが半角英数字を含んだ正しい形式でないと保存できない(半角英数字のみ）' do
        @user.password = 'aaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      
      it "family_nameが空だと登録できない" do
        @user.family_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name can't be blank")
       end
      
      it "family_nameが半角だと登録できない" do
        @user.family_name = 'abe'
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name Full-width characters.")
       end
      
      it "first_nameが空だと登録できない" do
        @user.first_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
       end
      
       it "first_nameが半角だと登録できない" do
        @user.first_name = 'abe'
        @user.valid?
        expect(@user.errors.full_messages).to include("First name Full-width characters.")
       end
       
       it "family_name_friganaが空だと登録できない" do
        @user.family_name_frigana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name frigana can't be blank")
       end
      
       it "family_name_frignaが半角だと登録できない" do
        @user.family_name_frigana = 'abe'
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name frigana Full-width katakana characters.")
       end
      
       it "first_name_friganaが空だと登録できない" do
        @user.first_name_frigana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name frigana can't be blank")
       end
      
       it "first_name_friganaが半角だと登録できない" do
        @user.first_name_frigana = 'abe'
        @user.valid?
        expect(@user.errors.full_messages).to include("First name frigana Full-width katakana characters.")
       end
    
       it "birthdayが空だと登録できない" do
          @user.birthday = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Birthday can't be blank")
         end
       end
    end 
  end

  
    
    
    
    
    

    
      

    
    
  
  
  
  
  

