require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is not valid without a title" do
    expect(Post.new).to_not be_valid
  end
  it "is not valid without a body" do
    expect(Post.new).to_not be_valid
  end
end
