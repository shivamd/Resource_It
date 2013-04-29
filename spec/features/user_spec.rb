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

  describe "sign in" do
  	before { visit signin_path }

  	describe "with invalid information" do
  		before { click_button "Sign in" }
  		it { should have_selector('div.alert', text: "Invalid") }
  	end

  	describe "with valid information" do
  		let(:user) { FactoryGirl.create(:user) }
  		before do
  			fill_in "Email", user.email
  			fill_in "Password", user.password
  			click_button "Sign in"
  		end

  		it { should have_selector('h1', text: user.name) }
  		it { should have_link("Sign out", href: signout_path) }
  		it { should_not have_link("Sign in", href: signin_path) }
  	end
  end
end
