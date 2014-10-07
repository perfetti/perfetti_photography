require 'rails_helper'

RSpec.describe "line_items/index", :type => :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        :photograph => nil,
        :price_cents => 1,
        :cart => nil,
        :user => nil,
        :state => "MyText"
      ),
      LineItem.create!(
        :photograph => nil,
        :price_cents => 1,
        :cart => nil,
        :user => nil,
        :state => "MyText"
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
