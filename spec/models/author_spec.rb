require 'spec_helper'

describe Author, :type => :model do
  let(:author) { create(:author) }

  it "has a valid factory" do
    expect(author).to be_valid
  end

  describe "associations" do
    it { should have_many(:books).through(:works) }
  end
end


