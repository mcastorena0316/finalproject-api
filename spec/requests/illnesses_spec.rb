require 'rails_helper'

RSpec.describe 'Illness API' do
  # Initialize the test data
  let!(:user) { create(:user) }
  let!(:illnesses) { create_list(:illness, 10, user_id: user.id) }
  let(:user_id) { user.id }
  let(:id) { illnesses.first.id }

  # Test suite for GET /users/:user_id/illnesses
  describe 'GET users/:user_id/illnesses' do
    before { get "/users/#{user_id}/illnesses" }

    context 'when user exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all user illneses' do
        expect(json.size).to eq(10)
      end
    end
  end

  #   Test suite for GET /users/:user_id/illnesses/:id
  describe 'GET /users/:user_id/illnesses/:id' do
    before { get "/users/#{user_id}/illnesses/#{id}" }

    context 'when illness exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the illness' do
        expect(json['id']).to eq(id)
      end
    end
  end

  # Test suite for PUT illness
  describe 'POST /createill' do
    let(:valid_attributes) { { illness: { name: 'Heartache', description: 'Pain', user_id: user_id } } }

    context 'when request attributes are valid' do
      before { post "/users/#{user_id}/illnesses", params: valid_attributes }

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  # Test suite for PUT /users/:user_id/illnesses/:id
  describe 'PUT /users/:user_id/illnesses/:id' do
    let(:valid_attributes) { { illness: { name: 'Gastritis' } } }

    before { put "/users/#{user_id}/illnesses/#{id}", params: valid_attributes }

    context 'when illnesses exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'updates the illness' do
        updated_illness = Illness.find(id)
        expect(updated_illness.name).to match(/Gastritis/)
      end
    end
  end

  #   Test suite for DELETE /deleteill
  describe 'DELETE /deleteill' do
    before { delete "/users/#{user_id}/illnesses/#{id}" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
