require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Transaction' do
        expect {
          post :create, params: { transaction: { amount: 100.50, description: 'Test' } }
        }.to change(Transaction, :count).by(1)
      end

      it 'renders a JSON response with the new transaction' do
        post :create, params: { transaction: { amount: 100.50, description: 'Test' } }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new transaction' do
        post :create, params: { transaction: { amount: -1, description: '' } }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end
end