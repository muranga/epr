require 'spec_helper'

describe Proposal do
  it { should validate_presence_of :title }
  it { should validate_presence_of :abstract }
  it { should validate_presence_of :document }
  it { should belong_to :project }
  it { should belong_to :user }
  it { should allow_mass_assignment_of :document }

end
