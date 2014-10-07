require 'rails_helper'

RSpec.describe "photographs/new", :type => :view do
  before(:each) do
    assign(:photograph, Photograph.new(
      :album => nil,
      :title => "MyString",
      :description => "MyText",
      :asset_url => "MyString",
      :user => nil
    ))
  end

  it "renders new photograph form" do
    render

    assert_select "form[action=?][method=?]", photographs_path, "post" do

      assert_select "input#photograph_album_id[name=?]", "photograph[album_id]"

      assert_select "input#photograph_title[name=?]", "photograph[title]"

      assert_select "textarea#photograph_description[name=?]", "photograph[description]"

      assert_select "input#photograph_asset_url[name=?]", "photograph[asset_url]"

      assert_select "input#photograph_user_id[name=?]", "photograph[user_id]"
    end
  end
end
