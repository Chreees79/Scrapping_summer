require_relative '../lib/darktrader'

describe 'we are getting all cryptos we can get' do
  it 'verify that there is some current crypto' do
    expect(extract_crypto.include?("BTC")).to eq(true)
    expect(extract_crypto.include?("ETH")).to eq(true)
    expect(extract_crypto.include?("KRONENBOURG")).to eq(false)
  end
end

describe 'we are getting all the values we can get and in the right format' do
  it 'vérify if there is 20 values' do
    expect(extract_values.length).to eq(20)
  end
  it 'verify that they are floats' do
    expect(extract_values[0].class).to eq(Float)
    expect(extract_values[10].class).to eq(Float)
  end
end

describe 'verify the class of the final list' do
  it 'verify that the final list is an array' do
    expect(create_final_array.class).to eq(Array)
  end
  it 'verify that elements are hashes' do
    expect(create_final_array[0].class).to eq(Hash)
    expect(create_final_array[10].class).to eq(Hash)
  end
end 

