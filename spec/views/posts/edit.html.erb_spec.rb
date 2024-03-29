require 'rails_helper'

RSpec.describe "posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :body => "MyText",
      :user => nil,
      :published => false,
      :publishable => false
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_body[name=?]", "post[body]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_published[name=?]", "post[published]"

      assert_select "input#post_publishable[name=?]", "post[publishable]"
    end
  end
end
