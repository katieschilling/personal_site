describe PositionsController do
  it 'returns json index of all positions' do
    Position.create!(title: "Princess", company: "Royal Laboratory", location: "The Castle")
    get :index
    body = JSON.parse(response.body).first
    expect(body["title"]).to eq("Princess")
    expect(body["company"]).to eq("Royal Laboratory")
    expect(body["location"]).to eq("The Castle")
  end
end

