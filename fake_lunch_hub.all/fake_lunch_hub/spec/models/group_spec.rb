require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = Group.new(name: "Test group ENSIAS")
  end
  
  subject { @group }
  
  describe "When name is not present" do
    before { @group.name = " " }
    it { should_not be_valid }
  end

end
