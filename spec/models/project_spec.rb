require 'spec_helper'

describe Project do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:number_of_participants) }
  it { should validate_presence_of(:status) }
end
