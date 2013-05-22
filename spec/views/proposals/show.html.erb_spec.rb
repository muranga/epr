require 'spec_helper'

describe "proposals/show" do
  before(:each) do
    @proposal = assign(:proposal, stub_model(Proposal))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
