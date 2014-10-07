require 'rails_helper'

RSpec.describe "line_items/show", :type => :view do
  before(:each) do
    @line_item = assign(:line_item, LineItem.create!(
      :photograph => nil,
      :price_cents => 1,
      :cart => nil,
      :user => nil,
      :state => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
