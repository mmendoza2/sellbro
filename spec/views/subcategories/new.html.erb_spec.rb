require 'spec_helper'

describe "subcategories/new" do
  before(:each) do
    assign(:subcategory, stub_model(Subcategory).as_new_record)
  end

  it "renders new subcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subcategories_path, "post" do
    end
  end
end
