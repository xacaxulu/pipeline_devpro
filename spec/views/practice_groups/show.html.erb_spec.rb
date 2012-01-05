require 'spec_helper'

describe "practice_groups/show.html.erb" do
  before(:each) do
    @practice_group = assign(:practice_group, stub_model(PracticeGroup,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
