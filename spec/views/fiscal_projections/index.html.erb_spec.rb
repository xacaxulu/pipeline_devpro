require 'spec_helper'

describe "fiscal_projections/index.html.erb" do
  before(:each) do
    assign(:fiscal_projections, [
      stub_model(FiscalProjection,
        :month => "Month"
      ),
      stub_model(FiscalProjection,
        :month => "Month"
      )
    ])
  end

  it "renders a list of fiscal_projections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Month".to_s, :count => 2
  end
end
