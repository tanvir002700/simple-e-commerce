# rubocop:disable Metrics/BlockLength
RSpec.describe User, type: :controller do
  describe 'User' do
    login_user
    context 'GET #index' do
      it 'responds unauthorized to perform this action' do
        get :index
      end
    end
  end
end
