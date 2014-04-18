require 'spec_helper'

describe Contact do
  it { should validate_presence_of :email }
  it { should validate_presence_of :content }

  it 'should not allow invalid emails addresses' do
    c = Contact.create(email: 'huntermeyer.com', content: 'test')
    c.should_not be_valid
  end
end
