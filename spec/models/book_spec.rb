require 'spec_helper'

describe Book, :type => :model do
  let(:book) { create(:book) }

  it "has a valid factory" do
    expect(book).to be_valid
  end

  describe "associations" do
    it { should belong_to(:editorial) }
    it { should have_many(:authors).through(:works) }
  end
end

