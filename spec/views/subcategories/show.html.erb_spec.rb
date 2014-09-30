require 'spec_helper'

describe "subcategories/show" do
  before(:each) do
    @subcategory = assign(:subcategory, stub_model(Subcategory))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
