require 'spec_helper'

describe Snippet do

	it { should validate_presence_of(:content) }
	it { should validate_presence_of(:user_id) }
	it { should belong_to(:user) }

	it { should have_and_belong_to_many(:tags) }
end
