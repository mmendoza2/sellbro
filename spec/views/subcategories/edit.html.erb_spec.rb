require 'spec_helper'

describe "subcategories/edit" do
  before(:each) do
    @subcategory = assign(:subcategory, stub_model(Subcategory))
  end

  it "renders the edit subcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subcategory_path(@subcategory), "post" do
    end
  end
end
