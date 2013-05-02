require "spec_helper"

describe User do

	it { should validate_presence_of(:email) }
	it { should allow_value("testing@example.com").for(:email) }
	it { should_not allow_value("test[at]dotcom").for(:email) }
	it { should validate_uniqueness_of(:email) }

	it { should validate_presence_of(:password) }
	it { should ensure_length_of(:password).is_at_least(6) }

  it { should have_many(:snippets).dependent(:destroy) }
  it { should have_many(:tags).through(:snippets) }
end
