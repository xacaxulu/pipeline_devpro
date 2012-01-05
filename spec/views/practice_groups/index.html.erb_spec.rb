require 'spec_helper'

describe "practice_groups/index.html.erb" do
  before(:each) do
    assign(:practice_groups, [
      stub_model(PracticeGroup,
        :name => "Name"
      ),
      stub_model(PracticeGroup,
        :name => "Name"
      )
    ])
  end

  it "renders a list of practice_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
