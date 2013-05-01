require "spec_helper"

describe Tag do
	it { should validate_presence_of(:content) }
	it { should validate_uniqueness_of(:content) }
	it { should have_and_belong_to_many(:snippets) }
end
