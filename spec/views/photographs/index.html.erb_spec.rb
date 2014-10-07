require 'rails_helper'

RSpec.describe "photographs/index", :type => :view do
  before(:each) do
    assign(:photographs, [
      Photograph.create!(
        :album => nil,
        :title => "Title",
        :description => "MyText",
        :asset_url => "Asset Url",
        :user => nil
      ),
      Photograph.create!(
        :album => nil,
        :title => "Title",
        :description => "MyText",
        :asset_url => "Asset Url",
        :user => nil
      )
    ])
  end

  it "renders a list of photographs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Asset Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
