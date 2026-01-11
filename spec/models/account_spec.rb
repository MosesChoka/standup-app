require 'rails_helper'

RSpec.describe Account, type: :model do
  subject { build(:account) }
  
  it "has a valid factory" do
    is_expected.to be_valid
  end
  

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  
  end

end
