require "spec_helper"

describe User do

	it { should validate_presence_of(:name) }
	it { should ensure_length_of(:name).is_at_most(50) }

	it { should validate_presence_of(:email) }
	it { should allow_value("testing@example.com").for(:email) }
	it { should_not allow_value("test[at]dotcom").for(:email) }
	it { should validate_uniqueness_of(:email) }

	it { should validate_presence_of(:password) }
	it { should ensure_length_of(:password).is_at_least(6) }

  it { should have_many(:snippets).dependent(:destroy) }
end
