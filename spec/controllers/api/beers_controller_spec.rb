require 'rails_helper'

RSpec.describe Api::BeersController, :type => :controller do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'returns a 201 created status code' do
        post :create
        expect(response).to have_http_status(:created)
      end

      it 'saves the new beer in the database' do
        expect { post :create }.to change(Beer, :count).by(1)
      end

      it 'saves the memo in the database' do
        params = { memo: '最高にうまいビールだった！' }
        post :create, params
        expect(Beer.last.memo).to eq params[:memo]
      end
    end

    context 'with invalid attributes' do
      it 'does not save the new beer in the database'
    end

    context 'with a new user' do
      it 'saves the new user in the database'
    end

    context 'with a existing user' do
      it 'does not save the new user in the database'
      it 'created beer.user is the existing user'
    end
  end
end
