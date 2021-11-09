require 'rails_helper'

# RSpec.describe "Apartments", type: :request do
#   describe "GET /index" do
#     pending "add some examples (or delete) #{__FILE__}"
#   end
# end

RSpec.describe "Apartments", type: :request do
  let(:user) do
    User.create email: 'lil@test.com', password: '123456', password_confirmation: '123456'
  end

  # -----index-----
  describe "GET /index" do
    it 'gets all the apartments' do
      Apartment.create street: '567 Beach Avenue', city: 'SD', state: 'CA', manager: 'Tom Petty', email: 'tpetty@email.com', price: '1300', bedrooms: 2, bathrooms: 2, pets: 'no', user_id: user.id

      get '/apartments'

      apartments = JSON.parse(response.body)
      expect(apartments.length).to eq 1
      expect(response).to have_http_status(200)

      apartment = apartments.first
      expect(apartment['street']).to eq '567 Beach Avenue'
      expect(apartment['city']).to eq 'SD'
      expect(apartment['state']).to eq 'CA'
      expect(apartment['manager']).to eq 'Tom Petty'
      expect(apartment['email']).to eq 'tpetty@email.com'
    end
  end
end