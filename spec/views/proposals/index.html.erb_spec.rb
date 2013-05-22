require 'spec_helper'

describe "proposals/index" do
  before(:each) do
    assign(:proposals, [
      stub_model(Proposal),
      stub_model(Proposal)
    ])
  end

  it "renders a list of proposals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
