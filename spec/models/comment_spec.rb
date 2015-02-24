
require 'rails_helper'
  
describe Comment do

  # let(:com) { FactoryGirl.create(:comment) }

  # describe "validations" do
  
  #   it "is valid with body, user_id., commentable_id and commentable_type" do
  #     expect(com).to be_valid
  #   end

  #   it "is invalid without a body" do
  #     c.update(body: "")
  #     expect(com).to_not be_valid
  #   end
  # end

  describe "relationships" do

    it { should belong_to(:user) }
    it { should respond_to(:commentable) }
	end
end



