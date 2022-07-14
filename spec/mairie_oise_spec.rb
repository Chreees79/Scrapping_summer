require_relative '../lib/mairie_oise'


describe "the list of cities and urls" do
  it "should return the correct count" do
    expect(get_townhall_urls.count).to eq(185)
    expect(get_townhall_urls.count > 50).to eq(true)
    expect(get_townhall_urls.count >200).to eq(false)
  end
end
