require 'spec_helper'

describe User do
  it { should validate_presence_of(:user_type) }
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }


  context "if student" do
    before { subject.stub(:is_student?) { true } }
    it { should validate_presence_of(:registration_number) }
    it { should validate_presence_of(:academic_programme) }
  end

  context "if public" do
    before { subject.stub(:is_student?) { false } }
    it { should_not validate_presence_of(:registration_number) }
    it { should_not validate_presence_of(:academic_programme) }
    it { should_not validate_uniqueness_of(:registration_number) }
  end
end
