require 'spec_helper'

describe "practice_groups/new.html.erb" do
  before(:each) do
    assign(:practice_group, stub_model(PracticeGroup,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new practice_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => practice_groups_path, :method => "post" do
      assert_select "input#practice_group_name", :name => "practice_group[name]"
    end
  end
end
