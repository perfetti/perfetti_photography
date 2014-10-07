require 'rails_helper'

RSpec.describe "photographs/edit", :type => :view do
  before(:each) do
    @photograph = assign(:photograph, Photograph.create!(
      :album => nil,
      :title => "MyString",
      :description => "MyText",
      :asset_url => "MyString",
      :user => nil
    ))
  end

  it "renders the edit photograph form" do
    render

    assert_select "form[action=?][method=?]", photograph_path(@photograph), "post" do

      assert_select "input#photograph_album_id[name=?]", "photograph[album_id]"

      assert_select "input#photograph_title[name=?]", "photograph[title]"

      assert_select "textarea#photograph_description[name=?]", "photograph[description]"

      assert_select "input#photograph_asset_url[name=?]", "photograph[asset_url]"

      assert_select "input#photograph_user_id[name=?]", "photograph[user_id]"
    end
  end
end
