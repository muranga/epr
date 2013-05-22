require 'spec_helper'

describe "proposals/edit" do
  before(:each) do
    @proposal = assign(:proposal, stub_model(Proposal))
  end

  it "renders the edit proposal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proposal_path(@proposal), "post" do
    end
  end
end
