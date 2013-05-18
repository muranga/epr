require 'spec_helper'

describe ProjectMember do
  it { should belong_to :project }
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
end
