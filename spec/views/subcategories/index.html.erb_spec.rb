require 'spec_helper'

describe "subcategories/index" do
  before(:each) do
    assign(:subcategories, [
      stub_model(Subcategory),
      stub_model(Subcategory)
    ])
  end

  it "renders a list of subcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
