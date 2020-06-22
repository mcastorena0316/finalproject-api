# require 'rails_helper'

# RSpec.describe 'Illness API' do
#   # Initialize the test data
#   let!(:user) { create(:user) }
#   let!(:illness) { create(:illness) }
#   let!(:trackings) { create_list(:tracking, 10, illness_id: illness.id) }
#   let(:user_id) { user.id }
#   let(:illness_id) { illness.id }
#   let(:id) { trackings.first.id }

#   # Test suite for GET /users/:user_id/illnesses
#   describe 'GET users/:user_id/illnesses/:illness_id/trackings' do
#     before { get "/users/#{user_id}/illnesses/#{illness_id}/trackings" }

#     context 'when user exists' do
#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end

#       it 'returns all user illneses' do
#         expect(json.size).to eq(10)
#       end
#     end
#   end

#   # Test suite for GET /users/:user_id/illnesses/:illness_id/trackings/:id'
#   describe 'GET /users/:user_id/illnesses/:illness_id/trackings/:id' do
#     before { get "/users/#{user_id}/illnesses/#{illness_id}/trackings/#{id}" }

#     context 'when illness exists' do
#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end

#       it 'returns the illness' do
#         expect(json['id']).to eq(id)
#       end
#     end
#   end

#   # Test suite for PUT trackings
#   describe 'POST /createday' do
#     let(:valid_attributes) { { tracking: { date: '2014-09-23', temperature: 37, illness_id: illness_id } } }

#     context 'when request attributes are valid' do
#       before { post "/users/#{user_id}/illnesses/#{illness_id}/trackings", params: valid_attributes }

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end
#   end

#   # Test suite for PUT /users/:user_id/illnesses/:id
#   describe 'PUT /users/:user_id/illnesses/:illness_id/trackings/:id' do
#     let(:valid_attributes) { { tracking: { temperature: 38 } } }

#     before { put "/users/#{user_id}/illnesses/#{illness_id}/trackings/#{id}", params: valid_attributes }

#     context 'when tracking exists' do
#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end

#       it 'updates tracking' do
#         updated_tracking = Tracking.find(id)
#         expect(updated_tracking.temperature).to match(38)
#       end
#     end
#   end

#   #   Test suite for DELETE /deleteday
#   describe 'DELETE /deleteday' do
#     before { delete "/users/#{user_id}/illnesses/#{illness_id}/trackings/#{id}" }

#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end

#     before { get "/users/#{user_id}/illnesses/#{illness_id}/trackings" }

#     it 'expects size to decrease one' do
#       expect(json.size).to eq(9)
#     end

#     it 'expects different id first one' do
#     expect(json[0]['id']).not_to eq(id)
#     end

#   end
# end
