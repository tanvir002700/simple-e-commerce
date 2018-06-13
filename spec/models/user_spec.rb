# rubocop:disable Metrics/BlockLength
RSpec.describe User, type: :model do
  describe 'Associations' do
    context 'has many' do
      denomination_files = described_class.reflect_on_association(:denomination_files)
      it 'denomination_files' do
        expect(denomination_files.macro).to eq :has_many
      end

      vouchers = described_class.reflect_on_association(:vouchers)
      it 'vouchers' do
        expect(vouchers.macro).to eq :has_many
      end

      transaction_logs = described_class.reflect_on_association(:transaction_logs)
      it 'transaction_logs' do
        expect(transaction_logs.macro).to eq :has_many
      end
    end
  end

  describe 'Validations' do
    context 'email' do
      let(:user1) { build(:user, email: 'admin@email.com') }
      it 'should be valid' do
        expect(user1).to be_valid
      end

      let(:user2) { build(:user, email: 'admin@email') }
      it 'should not be valid' do
        expect(user2).to_not be_valid
      end
    end
  end

  describe 'Methods' do
    context '.name' do
      let(:user) { create(:user) }
      it 'should return full name' do
        expect(user.name).to eq("#{user.first_name} #{user.last_name}")
      end
    end
  end
end
