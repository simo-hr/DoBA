require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "チーム名とメールアドレスとパスワードがあれば登録できる" do 
    expect(FactoryBot.create(:user)).to be_valid
  end 

  it "チーム名がなければ登録できない" do 
    expect(FactoryBot.build(:user, email: "")).to_not be_valid 
  end 

  it "パスワードがなければ登録できない" do 
    expect(FactoryBot.build(:user, password: "")).to_not be_valid 
  end 

  it "チーム画像と活動エリアとレベルがなくても登録できる" do 
    expect(FactoryBot.create(:user)).to be_valid
  end 






end
