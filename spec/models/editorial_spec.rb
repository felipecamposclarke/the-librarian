require 'spec_helper'

describe Editorial, :type => :model do
  let(:editorial) { create(:editorial) }

  it "has a valid factory" do
    expect(editorial).to be_valid
  end

  describe "associations" do
    it { should have_many(:books) }
  end
end
