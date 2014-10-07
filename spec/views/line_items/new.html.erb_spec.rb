require 'rails_helper'

RSpec.describe "line_items/new", :type => :view do
  before(:each) do
    assign(:line_item, LineItem.new(
      :photograph => nil,
      :price_cents => 1,
      :cart => nil,
      :user => nil,
      :state => "MyText"
    ))
  end

  it "renders new line_item form" do
    render

    assert_select "form[action=?][method=?]", line_items_path, "post" do

      assert_select "input#line_item_photograph_id[name=?]", "line_item[photograph_id]"

      assert_select "input#line_item_price_cents[name=?]", "line_item[price_cents]"

      assert_select "input#line_item_cart_id[name=?]", "line_item[cart_id]"

      assert_select "input#line_item_user_id[name=?]", "line_item[user_id]"

      assert_select "textarea#line_item_state[name=?]", "line_item[state]"
    end
  end
end
