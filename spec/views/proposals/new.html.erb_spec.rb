require 'spec_helper'

describe "proposals/new" do
  before(:each) do
    assign(:proposal, stub_model(Proposal).as_new_record)
  end

  it "renders new proposal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proposals_path, "post" do
    end
  end
end
