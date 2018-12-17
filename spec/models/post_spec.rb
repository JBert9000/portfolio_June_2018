require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is not valid without a title" do
    expect(Post.new).to_not be_valid
  end
  it "is not valid without a body" do
    expect(Post.new).to_not be_valid
  end

  it "orders comments in reverse chronological order" do
    post = Post.create!(title: 'test post', body: 'test body')
    comment1 = post.comments.create!(name: 'foo', :body => "test1")
    comment2 = post.comments.create!(name: 'bar', :body => "test2")
    expect(post.reload.comments).to eq([comment1, comment2])
  end

  it "creates a comment" do
    post = Post.create!(title: 'test post', body: 'test body')
    comment1 = post.comments.create!(name: 'foobar', :body => "testing")
    expect(post.comments).to be_present
  end

end
