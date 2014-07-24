require 'rails_helper'

RSpec.describe Api::BeersController, :type => :controller do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new beer in the database' do
        expect {
          post :create
        }.to change(Beer, :count).by(1)
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
