require 'rails_helper'
  
describe User do

	let(:u) { FactoryGirl.create(:user) }

	describe "validation" do

		it "is valid with a name, password and email" do
	    expect(u).to be_valid
	  end

	  it "is invalid without a name" do
	   	u.update(name: "")
	    expect(u).to_not be_valid
	  end

	  it "is invalid without an email" do
	   	u.update(email: "")
	    expect(u).to_not be_valid
	  end

	  it "is invalid with duplicate email address" do
	   	u.update(email: "u@mail.com")
	  	d = FactoryGirl.create(:user)
	  	d.update(email: "u@mail.com")
	    expect(d).to_not be_valid
	  end

	end

	describe "relationships" do

		 # it {expect have_many :cakes}
		# it {expect have_many(:comments)}
	 it { should have_many :cakes }
	 it { should have_many :comments }

	end
	
end