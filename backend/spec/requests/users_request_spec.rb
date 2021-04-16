require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }

  describe 'GET /api/v1/users' do
    it 'succeeds to aquire the index' do
      get api_v1_users_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/users' do
    context 'with valid params'  do
      let(:params) do
        { user: {
          name: 'test_user',
          email: 'test@user.com',
          password: 'password',
          password_confirmation: 'password'
        }}
      end
      it 'succeeds to create a new user' do
        expect do
          post api_v1_users_path, params: params
        end.to change(User, :count).by(1)
      end
    end
  end
end
