describe 'GET api/v1/donation_centers', type: :request do
  subject { get '/api/v1/donation_centers', headers: auth_headers, as: :json }
  let(:user) { create(:user) }
  let!(:pharmacy) { create(:donation_center, :pharmacy) }
  let!(:general) { create(:donation_center, :general) }

  it 'returns success' do
    subject
    expect(response).to have_http_status(:success)
  end

  it "returns donation centers data data" do
    subject
    expect(json[:pharmacies].count).to eq(1)
    expect(json[:general_supplies].count).to eq(1)
    expect(json[:pharmacies][0][:name]).to eq pharmacy.name
    expect(json[:general_supplies][0][:name]).to eq general.name
  end
end
