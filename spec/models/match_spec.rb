require 'rails_helper'

RSpec.describe Match, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "タイトルと内容と試合日と開催日があれば投稿できる" do 
    expect(FactoryBot.create(:match)).to be_valid
  end 
end
