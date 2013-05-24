require 'spec_helper'

describe Report do
  it { should belong_to :user}
  it { should belong_to :project}
  it { should validate_presence_of :title}
  it { should validate_presence_of :abstract}
end
