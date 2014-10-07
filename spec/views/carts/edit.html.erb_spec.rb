require 'rails_helper'

RSpec.describe "carts/edit", :type => :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :user => nil,
      :state => "MyText"
    ))
  end

  it "renders the edit cart form" do
    render

    assert_select "form[action=?][method=?]", cart_path(@cart), "post" do

      assert_select "input#cart_user_id[name=?]", "cart[user_id]"

      assert_select "textarea#cart_state[name=?]", "cart[state]"
    end
  end
end
