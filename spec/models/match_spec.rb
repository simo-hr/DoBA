require 'rails_helper'

RSpec.describe Match, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "チーム名とメールアドレスとパスワードがあれば登録できる" do 
    expect(FactoryBot.create(:match)).to be_valid
  end 
end
