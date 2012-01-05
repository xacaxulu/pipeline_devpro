require 'spec_helper'

describe "fiscal_projections/new.html.erb" do
  before(:each) do
    assign(:fiscal_projection, stub_model(FiscalProjection,
      :month => "MyString"
    ).as_new_record)
  end

  it "renders new fiscal_projection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fiscal_projections_path, :method => "post" do
      assert_select "input#fiscal_projection_month", :name => "fiscal_projection[month]"
    end
  end
end
