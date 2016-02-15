require 'rails_helper'

describe OmniauthCallbacksController do
  describe 'reate for registration facebook' do
    context 'with valid attributes' do
      OmniAuth.config.add_mock(:facebook, {:uid => '10153792846940943', :extra => { "user_hash" => { "email" => "text@example.com" } } } 
      it 'creates new registration' do
        get :facebook,
        binding.pry
        expect(User.count).to eq(1)
      end

      it 'redirects to the "index" action for shares' dol
        post :facebook, user: attributes_for(:user)
        response.should redirect_to root_path
      end
    end

    context 'with invalid credentials' do
      OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
      it 'does not create the registration' do
        post :facebook, user: attributes_for(:user, year: nil)
        expect(User.count).to eq(0)
      end

      it 're-renders the "landing page" with flash error message' do
        post :facebook, user: attributes_for(:vehicle, year: nil)
        response.should  redirect_to new_user_registration_url
      end
    end
  end
end
