require 'spec_helper'

describe "fiscal_projections/edit.html.erb" do
  before(:each) do
    @fiscal_projection = assign(:fiscal_projection, stub_model(FiscalProjection,
      :month => "MyString"
    ))
  end

  it "renders the edit fiscal_projection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fiscal_projections_path(@fiscal_projection), :method => "post" do
      assert_select "input#fiscal_projection_month", :name => "fiscal_projection[month]"
    end
  end
end
