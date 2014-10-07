require 'rails_helper'

RSpec.describe "photographs/show", :type => :view do
  before(:each) do
    @photograph = assign(:photograph, Photograph.create!(
      :album => nil,
      :title => "Title",
      :description => "MyText",
      :asset_url => "Asset Url",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Asset Url/)
    expect(rendered).to match(//)
  end
end
