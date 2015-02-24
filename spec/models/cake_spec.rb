
require 'rails_helper'
  
describe Cake do

  let(:c) { FactoryGirl.create(:cake) }

  describe "validations" do
  
    it "is valid with name, description and cake_type" do
      expect(c).to be_valid
    end

    it "is invalid without a name" do
      c.update(name: "")
      expect(c).to_not be_valid
    end

    it "is invalid with too short name" do
      c.update(name: "a")
      expect(c).to_not be_valid
    end

    it "is invalid without a description" do
      c.update(description: "")
      expect(c).to_not be_valid
    end

    it "is invalid without a cake_type" do
      c.update(cake_type: "")
      expect(c).to_not be_valid
    end

  end

  describe "relationships" do

    it { should belong_to(:user) }
    it { should have_many(:comments)}
    it "should destroy associated comments" do
      comment = c.comments
      c.destroy
      expect(comment).to be_empty  
    end

  
  end

end

 