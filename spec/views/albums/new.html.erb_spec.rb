require 'rails_helper'

RSpec.describe "albums/new", :type => :view do
  before(:each) do
    assign(:album, Album.new(
      :post => nil,
      :user => nil
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "input#album_post_id[name=?]", "album[post_id]"

      assert_select "input#album_user_id[name=?]", "album[user_id]"
    end
  end
end
