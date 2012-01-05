require 'spec_helper'

describe "practice_groups/edit.html.erb" do
  before(:each) do
    @practice_group = assign(:practice_group, stub_model(PracticeGroup,
      :name => "MyString"
    ))
  end

  it "renders the edit practice_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => practice_groups_path(@practice_group), :method => "post" do
      assert_select "input#practice_group_name", :name => "practice_group[name]"
    end
  end
end
