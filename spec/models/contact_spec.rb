# frozen_string_literal: true

require 'rails_helper'

describe Contact do
  context 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:name) }

    describe 'email' do
      let(:contact) { described_class.new(name: 'Hunter', email: 'bademail.com', content: 'test') }

      it 'does not allow invalid emails addresses' do
        expect(contact).to_not be_valid
        expect(contact.errors[:email]).to eq ['is invalid']
      end
    end
  end

  context 'before_save' do
    describe 'email' do
      let(:contact) { described_class.create(name: 'Hunter', email: 'EMAIL@EXAMPLE.com', content: 'test') }

      it 'downcases the email' do
        expect(contact.email).to eq 'email@example.com'
      end
    end
  end
end
