require 'rails_helper'

RSpec.describe 'User API', type: :request do
  # initialize test data
  let!(:users) { create_list(:user, 10) }
  let(:user_id) { users.first.id }

#   Test suite for GET /users
  describe 'GET /users' do
    before { get '/users' }

    it 'returns user' do
      expect(json).not_to be_empty
      expect(json['users'].size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  #   # Test suite for GET /todos/:id
    describe 'GET /users/:id' do
      before { get "/users/#{user_id}" }

      context 'when the record exists' do
        it 'returns user' do
          expect(json).not_to be_empty
          expect(json['user']['id']).to eq(user_id)
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end
    end

    # Test suite for POST /user
    describe 'POST /users' do
      let(:valid_attributes) { { user:  { username: 'Foobar', password: 'foobar', password_confirmation: 'foobar' }} }

      context 'when the request is valid' do
        before { post '/users', params: valid_attributes }

        it 'creates a user' do
          expect(json['user']['username']).to eq('Foobar')
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end

      context 'when the request is invalid' do
        before { post '/users', params: {user: { username: 'Foobar2' }} }

        it 'returns status code 422' do
          expect(json['status']).to eq(500)
        end
      end
    end
end
