require 'spec_helper'

describe "fiscal_projections/show.html.erb" do
  before(:each) do
    @fiscal_projection = assign(:fiscal_projection, stub_model(FiscalProjection,
      :month => "Month"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Month/)
  end
end
