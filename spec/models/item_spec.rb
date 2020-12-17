require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  
  describe '商品出品' do
   
   context '商品出品ができる時' do
      it "全ての項目が記入されていれば購入できる" do
       expect(@item).to be_valid
      end
    end
   
   
   
   
   context '商品出品ができない時' do
    it "image(画像)が添付されていないと登録できないこと" do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
  
  
    it "name(商品名)が空だと登録できないこと" do
     @item.name = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Name can't be blank")
    end

    it "name(商品名)が41文字以上だと登録できないこと" do
      @item.name = "a"*41 
      @item.valid?
      expect(@item.errors.full_messages).to include("Name は40文字以下で入力してください")
    end
 
 
    it "explanation(商品の説明)が空だと登録できないこと" do
     @item.explanation = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Explanation can't be blank")
    end
  
    it "explanation(商品の説明)が1001文字以上だと登録できないこと" do
     @item.explanation = "a"*1001
     @item.valid?
     expect(@item.errors.full_messages).to include("Explanation は1000文字以下で入力してください")
    end


    it "Category(カテゴリー)が空だと登録できないこと" do
     @item.category_id = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Category can't be blank")
    end
  
    it "Category(カテゴリー)に0が選択されている場合は購入できないこと" do
      @item.category_id = 0 
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can’t be blank")
     end


    it "Status(商品の状態)が空だと登録できないこと" do
     @item.status_id = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Status can't be blank")
    end
  
    it "Status(商品の状態)に0が選択されている場合は購入できないこと" do
      @item.status_id = 0
      @item.valid?
      expect(@item.errors.full_messages).to include("Status can’t be blank")
     end


    it "Shipping cost(配送料の負担)が空だと登録できないこと" do
     @item.shipping_cost_id  = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Shipping cost can't be blank")
    end
  
    it "Shipping cost(配送料の負担)に0が選択されている場合は購入できないこと" do
      @item.shipping_cost_id  = 0
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping cost can’t be blank")
     end


    it "Delivery area(配送元の地域)が空だと登録できないこと" do
     @item.delivery_area_id  = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Delivery area can't be blank")
    end

    it "Delivery area(配送元の地域)に0が選択されている場合は購入できないこと" do
      @item.delivery_area_id  = 0
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery area can’t be blank")
     end


    it "Days to delivery(発送までの日数)が空だと登録できないこと" do
     @item.days_to_delivery_id  = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Days to delivery can't be blank")
    end

    it "Days to delivery(発送までの日数)に0が選択されている場合は購入できないこと" do
      @item.days_to_delivery_id  = 0
      @item.valid?
      expect(@item.errors.full_messages).to include("Days to delivery can’t be blank")
     end
 



    it "Price(価格)が空だと登録できないこと" do
     @item.price = nil
     @item.valid?
     expect(@item.errors.full_messages).to include("Price can't be blank")
    end
  
    it "Price(価格)が300円以下だと登録できないこと" do
     @item.price = "b"*300
     @item.valid?
     expect(@item.errors.full_messages).to include("Price out of setting range")
    end
 
 
 
    it "Price(価格)が9,999,999円以上だと登録できないこと" do
     @item.price = "a"*9,999,999
     @item.valid?
     expect(@item.errors.full_messages).to include("Price out of setting range")
    end


   end
  end
end





