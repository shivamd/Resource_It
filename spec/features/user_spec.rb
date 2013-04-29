require 'spec_helper'

describe "User flow" do

	subject { page }

	describe "signup" do
	  before { visit signup_path }
	  let(:submit) { "Create my account" }

	  describe "with invalid information" do
	  	it "should not create a user" do
	  		expect { click_button submit }.not_to change(User,:count)
	  	end
	  end

	  describe "with valid information" do
	  	before do
	  		fill_in "Name", with: "myname"
	  		fill_in "Email", with: "myemail@gmail.com"
	  		fill_in "Password", with: "password"
	  	end
	  	it "should create a user" do
	  		expect { click_button submit }.to change(User, :count).by(1)
	  	end
	  end

	end
end
