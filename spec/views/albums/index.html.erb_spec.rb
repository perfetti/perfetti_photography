require 'rails_helper'

RSpec.describe "albums/index", :type => :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :post => nil,
        :user => nil
      ),
      Album.create!(
        :post => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
